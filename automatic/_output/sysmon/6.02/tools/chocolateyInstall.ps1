$packageName = 'sysmon'
$url = 'https://download.sysinternals.com/files/Sysmon.zip'
$checksum = '4be4cbd7abf61efb7e5bcdcde0243f53061e383cbeb0ffc893f6accb633a823d'
$checksumType = 'sha256'
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