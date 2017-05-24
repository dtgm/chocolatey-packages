$packageName = 'telegram.install'
$installerType = 'exe'
$url = 'https://updates.tdesktop.com/tsetup/tsetup.1.1.2.exe'
$checksum = '2c25d2e6b53937af9e88fc7112ee6361b4fda010af650df75b86d589e6c7a63d'
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