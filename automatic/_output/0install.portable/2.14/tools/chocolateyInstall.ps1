$packageName = '0install.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://0install.de/files/zero-install.zip'
$checksum = '9edc2ffbfd4790660cc6bdb3bafd7a9ab1a6d58588b9e438263a98f97d71cb95'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"