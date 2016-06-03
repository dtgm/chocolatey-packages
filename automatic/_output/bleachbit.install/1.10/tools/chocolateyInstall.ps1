$packageName = 'bleachbit.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.bleachbit.org/BleachBit-1.10-setup.exe'
$checksum = '290a7e94c371dfe9e03837f65285e466571030ef53ee371a5aeb5d249c5ff6ea'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"