$packageName = 'mediainfo'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://mediaarea.net/download/binary/mediainfo-gui/0.7.82/MediaInfo_GUI_0.7.82_Windows.exe'
$checksum = 'fcbfb7e92ff931caf586ffb0f5672f20ed728367'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"