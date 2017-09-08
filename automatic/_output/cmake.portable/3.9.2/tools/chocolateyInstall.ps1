$packageName = 'cmake.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://cmake.org//files/v3.9/cmake-3.9.2-win32-x86.zip'
$checksum = '9fe68d50f065666cb2861f53751390f15c6363c440e86a07677689378bb8329f'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"