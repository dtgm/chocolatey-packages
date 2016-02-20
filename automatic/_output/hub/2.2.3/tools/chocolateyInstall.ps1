$packageName = 'hub'
$url = 'https://github.com/github/hub/releases/download/v2.2.3/hub-windows-386-2.2.3.zip'
$checksum = '290b607ba46221f23e9b12f036487152'
$checksumType = 'md5'
$url64 = 'https://github.com/github/hub/releases/download/v2.2.3/hub-windows-amd64-2.2.3.zip'
$checksum64 = 'cbd1492719ccef7d8895dd2bd39720be'
$checksumType64 = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"