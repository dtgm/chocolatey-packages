$packageName = 'byteball'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/byteball/byteball/releases/download/v1.11.4/Byteball-win32.exe'
$checksum = '631e337b88eff50bd2467853f30bda165d1bcf9867e8c7c7475a0d6e476aa086'
$checksumType = 'sha256'
$url64 = 'https://github.com/byteball/byteball/releases/download/v1.11.4/Byteball-win64.exe'
$checksum64 = '339df610bbeeb0de8c5ea973d278c376db9afcba77d990dc1eb44979e493d1c6'
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