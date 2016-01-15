$packageName = 'capture2text'
$url = 'http://sourceforge.net/projects/capture2text/files/Capture2Text/Capture2Text_v3.8/Capture2Text_v3.8.zip/download'
$checksum = '1373ff4ef35a2b5583286832dc75829f8ee83419'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"