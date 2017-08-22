$packageName = 'audacious'
$url = 'http://distfiles.audacious-media-player.org/audacious-3.9-win32.zip'
$checksum = '4f62c7d6ec9194bc207d71f6e5982c42053c10333e64325c882f54b555d545eb'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"