$packageName = 'hub'
$url = 'https://github.com/github/hub/releases/download/v2.2.9/hub-windows-386-2.2.9.zip'
$checksum = 'afa3024091677269504c0196f546c548'
$checksumType = 'md5'
$url64 = 'https://github.com/github/hub/releases/download/v2.2.9/hub-windows-amd64-2.2.9.zip'
$checksum64 = '418a4aba5a9c7cb6d7b36e0afce4febf'
$checksumType64 = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"