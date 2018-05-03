$packageName = 'cyberduck.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://update.cyberduck.io/windows/Cyberduck-Installer-6.5.0.27854.exe'
$checksum = '{checksum}'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"