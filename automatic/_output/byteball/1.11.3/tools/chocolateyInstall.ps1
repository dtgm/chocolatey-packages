$packageName = 'byteball'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/byteball/byteball/releases/download/v1.11.3/Byteball-win32.exe'
$checksum = '3d64e6c4ee33c518a469d00495d94da5a22d066225fdfb0097a8dfa15bfa18d0'
$checksumType = 'sha256'
$url64 = 'https://github.com/byteball/byteball/releases/download/v1.11.3/Byteball-win64.exe'
$checksum64 = 'faf0535c9651516e73add5b9a29a4f5cf8a8aa9449cebfa96752aa0a4e245673'
$checksumType64 = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"