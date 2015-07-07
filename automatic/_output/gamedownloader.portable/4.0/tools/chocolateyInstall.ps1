$packageName = 'gamedownloader.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://iweb.dl.sourceforge.net/project/dev-fire-gd/Game Downloader 4.0/Game Downloader 4.0.zip'
$checksum = '{checksum}'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"