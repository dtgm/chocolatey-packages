$packageName = 'mediainfo'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://mediaarea.net/download/binary/mediainfo-gui/0.7.92/MediaInfo_GUI_0.7.92_Windows.exe'
$checksum = '64e9ccb05eebf543bf98c32ddca41e515de992888ee275d291f0e6c6db5e24ed'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"