$packageName = 'cyberduck.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://update.cyberduck.io/windows/Cyberduck-Installer-5.3.5.23361.exe'
$checksum = 'de08016b32b59c52598e0758f7c50137b603c2ba28c399420bb43f7b0a3153a0'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"