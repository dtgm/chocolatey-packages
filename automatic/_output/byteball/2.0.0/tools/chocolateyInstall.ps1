$packageName = 'byteball'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/byteball/byteball/releases/download/v2.0.0/Byteball-win32.exe'
$checksum = '3483727f68c5536c2d1bfd8ef5b8a9f3d6c0b9b2c2ca3aaf950693c889bd012a'
$checksumType = 'sha256'
$url64 = 'https://github.com/byteball/byteball/releases/download/v2.0.0/Byteball-win64.exe'
$checksum64 = '598f5989d8885aa9cb6e1609c1a0c9f81e7466211746a992e18d06dd53bda161'
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