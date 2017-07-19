$packageName = 'mediainfo'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://mediaarea.net/download/binary/mediainfo-gui/0.7.97/MediaInfo_GUI_0.7.97_Windows.exe'
$checksum = 'c6fa4ebc65121891d79f867461a0ad3a2b5dc9032a16b53078d16a499c624cf6'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"