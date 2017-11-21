$packageName = 'cmake.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://cmake.org//files/v3.10/cmake-3.10.0-win32-x86.zip'
$checksum = 'dce666e897f95a88d3eed6cddd1faa3f44179d519b33ca6065b385bbc7072419'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"