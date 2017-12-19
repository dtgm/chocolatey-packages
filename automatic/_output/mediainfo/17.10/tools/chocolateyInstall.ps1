$packageName = 'mediainfo'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://mediaarea.net/download/binary/mediainfo-gui/17.10/MediaInfo_GUI_17.10_Windows.exe'
$checksum = 'e25097e394d3d7ff8bdbaf1c76734894ee874a6fcc61e55b9ecdfc69225c9a15'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"