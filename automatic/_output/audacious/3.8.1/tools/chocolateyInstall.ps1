$packageName = 'audacious'
$url = 'http://distfiles.audacious-media-player.org/audacious-3.8.1-win32.zip'
$checksum = 'a5915cf9fc265e442fc327fb39df0c97225d6642a83db86b72e0fa7b643f01c5'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"