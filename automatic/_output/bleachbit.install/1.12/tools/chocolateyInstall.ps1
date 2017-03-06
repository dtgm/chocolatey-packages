$packageName = 'bleachbit.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.bleachbit.org/BleachBit-1.12-setup.exe'
$checksum = 'ade7c8286daeeb240c2fc216eeb4ed403dffe538bcc5df533decaf19871e1254'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"