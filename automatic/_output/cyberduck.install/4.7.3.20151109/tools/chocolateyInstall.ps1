$packageName = 'cyberduck.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://update.cyberduck.io/windows/Cyberduck-Installer-4.7.3.exe'
$checksum = '2af6ef22de8799567a9fc3dbf89db977e591b743'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"