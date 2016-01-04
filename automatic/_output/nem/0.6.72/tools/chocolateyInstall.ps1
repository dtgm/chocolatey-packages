$packageName = 'nem'
$installerType = 'exe'
$silentArgs = '--mode unattended --unattendedmodeui none --debuglevel 0'
$url = 'http://bob.nem.ninja/installer/nemwallet-0.6.72-windows-installer.exe'
$checksum = '6269b879745d64d4028e9e6b9decd546649bad58'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"