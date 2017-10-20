$packageName = 'byteball'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/byteball/byteball/releases/download/v1.11.1/Byteball-win32.exe'
$checksum = '986ea66767da9743b264882c22757685c916f13b333d42e715642ccc6a9e247b'
$checksumType = 'sha256'
$url64 = 'https://github.com/byteball/byteball/releases/download/v1.11.1/Byteball-win64.exe'
$checksum64 = '03907d88e426e064ad94743bf048c9430b7326f58d550bfb9c21b17ccfbad8b4'
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