$packageName = 'emulationstation.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://emulationstation.org/downloads/releases/2.0.1a/emulationstation_2.0.1a_win32.exe'
$checksum = '1a139e936ea471141ab0d2b2dbe504ba788189c3'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"