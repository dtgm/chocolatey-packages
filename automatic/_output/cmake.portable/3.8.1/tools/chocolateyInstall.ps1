$packageName = 'cmake.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://cmake.org//files/v3.8/cmake-3.8.1-win32-x86.zip'
$checksum = '0e9cbf89370440410da8639309053defa44f1ff5cc31476c1fdc8cc0b59604b0'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"