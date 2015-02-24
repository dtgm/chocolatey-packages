$packageName = 'regscanner.portable'
$url = 'http://www.nirsoft.net/utils/regscanner.zip'
$checksum = 'e7516f373572ba1d46a6fc8ce68ca11d7ca4f36c'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/regscanner-x64.zip'
$checksum64 = '5382f511c9f0964bc2191dcea28840c67f448b27'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "$url64" -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"
Set-Content -Path ("$installFile.gui") -Value $null