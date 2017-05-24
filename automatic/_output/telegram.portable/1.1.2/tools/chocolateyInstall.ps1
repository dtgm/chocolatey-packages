$packageName = 'telegram.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://updates.tdesktop.com/tsetup/tportable.1.1.2.zip'
$checksum = '6462e36402a4ab11104a548ed3d47dcc77ef943f49e3b097d6e797adb2eaadb8'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"