$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
Set-Content -Path ("$toolsDir\$packageName.exe.gui") -Value $nul
Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "" -Checksum "$checksum" -ChecksumType "$checksumType"