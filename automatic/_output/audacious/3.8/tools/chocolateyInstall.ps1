$packageName = 'audacious'
$url = 'http://distfiles.audacious-media-player.org/audacious-3.8-win32.zip'
$checksum = 'd1c69d05ab7ed4b3f64377b0d9eed8ff32d28b7c1c0b841e268412050c37bc07'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"