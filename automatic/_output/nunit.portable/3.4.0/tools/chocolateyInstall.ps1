$packageName = 'nunit.portable'
$url = 'https://github.com/nunit/nunit/releases/download/3.4.0/NUnit-3.4.0.zip'
$checksum = '8607f3859d390ee35214ed755de81a16'
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