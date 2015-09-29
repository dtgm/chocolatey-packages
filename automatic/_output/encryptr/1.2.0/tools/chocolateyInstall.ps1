$packageName = 'encryptr'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://github.com/devgeeks/Encryptr/releases/download/v1.2.0/Encryptr-v1.2.0-win.msi'
$checksum = 'd26cc44fecc39ba8d32a0b0fc562946d'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"