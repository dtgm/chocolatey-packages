$packageName = 'initool'
$url = 'https://github.com//dbohdan/initool/releases/download/v0.5.0/initool-v0.5.0-win32.zip'
$checksum = '1448cf7a805fa298ed9b514bc2770cc559933234'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"