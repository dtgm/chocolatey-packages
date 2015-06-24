$packageName = 'nunit.portable'
$url = 'http://github.com/nunit/nunitv2/releases/download/2.6.4/NUnit-2.6.4.zip'
$checksum = '57b094983ee6c84f0d2e3d7dc0678dca'
$checksumType = 'md5'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = "$checksumType"
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"