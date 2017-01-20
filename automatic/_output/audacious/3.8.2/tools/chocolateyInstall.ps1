$packageName = 'audacious'
$url = 'http://distfiles.audacious-media-player.org/audacious-3.8.2-win32.zip'
$checksum = 'd92f0277477fdf7207a5523d25b9e1f000225fe8c8a372cd9681253dabc005ae'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"