$packageName = 'regscanner.portable'
$url = 'http://www.nirsoft.net/utils/regscanner.zip'
$checksum = '86058e4fea3cde46f063617ad65b3d8b7bbc43c0'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/regscanner-x64.zip'
$checksum64 = 'e5b85419a16f8faa2e2da77437c9d795973d7ce0'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "RegScanner.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "$url64" -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"
Set-Content -Path ("$installFile.gui") -Value $null