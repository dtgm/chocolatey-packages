$packageName = 'initool'
$url = 'https://github.com//dbohdan/initool/releases/download/v0.6.1/initool-v0.6.1-win32.zip'
$checksum = 'c0ef385fb714c80c946fcd06d8f46bec293d59e5'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"