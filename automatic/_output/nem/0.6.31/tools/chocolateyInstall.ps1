$packageName = 'nem'
$installerType = 'exe'
$silentArgs = '--mode unattended --unattendedmodeui none --debuglevel 0'
$url = 'http://bob.nem.ninja/installer/nemwallet-0.6.31-windows-installer.exe'
$checksum = 'd811ae0dc3554ac5f3e9d74450c92906e7c30fb2'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"