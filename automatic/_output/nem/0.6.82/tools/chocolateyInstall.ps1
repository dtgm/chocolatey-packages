$packageName = 'nem'
$installerType = 'exe'
$silentArgs = '--mode unattended --unattendedmodeui none --debuglevel 0'
$url = 'http://bob.nem.ninja/installer/nemwallet-0.6.82-windows-installer.exe'
$checksum = 'e8f3f74159a7f089c748a8d1fcc28eefff6132b05e675a83e8f117e3a4ab97fb'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"