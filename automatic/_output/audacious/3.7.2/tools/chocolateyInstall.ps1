$packageName = 'audacious'
$url = 'http://distfiles.audacious-media-player.org/audacious-3.7.2-win32.zip'
$checksum = '2b971de31ae52fcc5fa2828b1dfc5f6bfa6d8c34'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"