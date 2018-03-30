$packageName = 'initool'
$url = 'https://github.com/dbohdan/initool/releases/download/v0.8.0/initool-v0.8.0-win32.zip'
$checksum = '61c8d24c7373eb83f87d79331582acd149343aa5d2cdfbbe9698aa5f07fd1555'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"