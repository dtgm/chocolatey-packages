$packageName = 'powderplayer'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/jaruba/PowderPlayer/releases/download/v0.98/PowderPlayer_v0.98.exe'
$checksum = 'dbb4da1419899acb72ef5f104fe1169b8712e7d9959755a46ac93a32428a5c7b'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"