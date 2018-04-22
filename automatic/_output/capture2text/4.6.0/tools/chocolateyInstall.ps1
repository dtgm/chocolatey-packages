$packageName = 'capture2text'
$urlArray = @('https://sourceforge.net/projects/capture2text/files/Capture2Text/Capture2Text_v4.6.0/Capture2Text_v4.6.0_32bit.zip/download', 'https://sourceforge.net/projects/capture2text/files/Capture2Text/Capture2Text_v4.6.0/Capture2Text_v4.6.0_64bit.zip/download')
$url = $urlArray[0]
$checksum = '{checksum}'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"