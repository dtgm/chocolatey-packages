$packageName = 'powderplayer'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/jaruba/PowderPlayer/releases/download/v1.10/PowderPlayer_v1.10.exe'
$checksum = '65df56c8f6405da52bd6773d975d047960e924cfbcc25ff4ee9050ea43ddd83a'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"