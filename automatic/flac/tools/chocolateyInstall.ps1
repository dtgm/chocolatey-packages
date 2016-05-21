$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFolder = "$packageName-$packageVersion-win"
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = '{{DownloadUrlx64}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "" -Checksum "$checksum" -ChecksumType "$checksumType"

try {
  $osBitness = Get-ProcessorBits
  if ($osBitness -eq 64) {
    Remove-Item -Recurse (Join-Path "$toolsDir" (Join-Path "$installFolder" 'win32'))
  } else {
    Remove-Item -Recurse (Join-Path "$toolsDir" (Join-Path "$installFolder" 'win64'))
  }
} catch {
  throw $_.Exception
}