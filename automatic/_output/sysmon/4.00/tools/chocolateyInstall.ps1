$packageName = 'sysmon'
$url = 'https://download.sysinternals.com/files/Sysmon.zip'
$checksum = 'dd21eb81b1a532ae3e335b085d312b0ea5ae51e3'
$checksumType = 'sha1'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = "checksumType"
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"