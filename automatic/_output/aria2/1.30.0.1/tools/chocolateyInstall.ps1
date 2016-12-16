$packageName = 'aria2'
$url = 'https://github.com/aria2/aria2/releases/download/release-1.30.0/aria2-1.30.0-win-32bit-build1.zip'
$checksum = 'cb5753132b8adc1b069145e40331bcbe'
$checksumType = 'md5'
$url64 = 'https://github.com/aria2/aria2/releases/download/release-1.30.0/aria2-1.30.0-win-64bit-build1.zip'
$checksum64 = 'bedeff3de8c2b601554cb6a5f980e5a7'
$checksumType64 = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64 "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"