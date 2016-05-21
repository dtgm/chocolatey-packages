$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "" -Checksum "$checksum" -ChecksumType "$checksumType"

try {
  $osBitness = Get-ProcessorBits
  if ($osBitness -eq 64) {
    Remove-Item -Recurse (Join-Path "$toolsDir" '32')
    Remove-Item (Get-ChildItem "$toolsDir\64\" -filter "*-win-setup.exe").fullname
  } else {
    Remove-Item -Recurse (Join-Path "$toolsDir" '64')
    Remove-Item (Get-ChildItem "$toolsDir\32\" -filter "*-win-setup.exe").fullname
  }
} catch {
  throw $_.Exception
}
