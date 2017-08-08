$packageName = 'telegram.install'
$installerType = 'exe'
$url = 'https://updates.tdesktop.com/tsetup/tsetup.1.1.19.exe'
$checksum = '72e98e00e05354a096decd1cb2d38f84ba7eb0fb3f0be808a2060e0fc4eead5d'
$checksumType = 'sha256'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) 

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"