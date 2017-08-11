$packageName = 'cmake.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://cmake.org//files/v3.9/cmake-3.9.1-win32-x86.zip'
$checksum = 'e0d9501bd34e3100e925dcb2e07f5f0ce8980bdbe5fce0ae950b21368d54c1a1'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"