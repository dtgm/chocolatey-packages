$packageName = 'audacious'
$url = 'http://distfiles.audacious-media-player.org/audacious-3.7.1-win32.zip'
$checksum = '82278852c7722053fc1d531f257e905f148318fc'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"