$packageName = 'initool'
$url = 'https://github.com/dbohdan/initool/releases/download/v0.7.0/initool-v0.7.0-win32.zip'
$checksum = '09e7d42a9e6f3315c43a7589aef7339b59d7202e'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"