$packageName = 'nem'
$installerType = 'exe'
$silentArgs = '--mode unattended --unattendedmodeui none --debuglevel 0'
$url = 'http://bob.nem.ninja/installer/nemwallet-0.6.77-windows-installer.exe'
$checksum = 'ed42d0f02c171544c4af676e5270c0d0f8246e27c7be3fe2bebbb28b549d88de'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"