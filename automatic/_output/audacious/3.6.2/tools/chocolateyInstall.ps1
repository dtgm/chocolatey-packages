$packageName = 'audacious'
$url = 'http://distfiles.audacious-media-player.org/audacious-3.6.2a-win32.zip'
$checksum = 'f64d17be036f02fd8e0043ac96c75fc5bbb454cd'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"