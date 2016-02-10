$packageName = 'gamedownloader.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://vorboss.dl.sourceforge.net/project/dev-fire-gd/Game Downloader 4.0/Game Downloader 4.0.zip'
$checksum = '99e03400c3459a513d1ba9e2ffda7a507db20b5c'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"