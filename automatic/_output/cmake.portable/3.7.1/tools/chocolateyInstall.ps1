$packageName = 'cmake.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://cmake.org//files/v3.7/cmake-3.7.1-win32-x86.zip'
$checksum = 'd2ec53ba3e3a12f734ed7127704ff9a83361e7cc6f9a0f0b3e2b56d9868a76b9'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"