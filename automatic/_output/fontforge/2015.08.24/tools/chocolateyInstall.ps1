$packageName = 'fontforge'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/fontforge/fontforge/releases/download/20150824/FontForge-2015-08-24-Windows.exe'
$checksum = '36dc46c16fd04885156716ee32f277cf'
$checksumType = 'md5'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"