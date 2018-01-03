$packageName = 'byteball'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/byteball/byteball/releases/download/v2.1.0/Byteball-win32.exe'
$checksum = '45cd2998810764827a268d83c3a20395c7dc1b47b90f03b0bbe1f396646baf93'
$checksumType = 'sha256'
$url64 = 'https://github.com/byteball/byteball/releases/download/v2.1.0/Byteball-win64.exe'
$checksum64 = '194a795055e80ec66182bf83cd735c34f421abddfba44329b04ec87a2e21fc1e'
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