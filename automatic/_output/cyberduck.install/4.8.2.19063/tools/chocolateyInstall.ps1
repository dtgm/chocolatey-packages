$packageName = 'cyberduck.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://update.cyberduck.io/windows/Cyberduck-Installer-4.8.2.19063.exe'
$checksum = '07e431fcc4858b768b61a9fb5dbbad2708bdc554'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"