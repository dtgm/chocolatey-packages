$packageName = 'mediainfo'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://mediaarea.net/download/binary/mediainfo-gui/0.7.90/MediaInfo_GUI_0.7.90_Windows.exe'
$checksum = 'c8b68e600997401ce93085afd6900fbf10e21eb175ef90f8d7090366a9f2da56'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"