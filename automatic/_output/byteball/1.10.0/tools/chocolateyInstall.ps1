$packageName = 'byteball'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/byteball/byteball/releases/download/v1.10.0/Byteball-win32.exe'
$checksum = 'c3efaf7d8cd6a5edc7c90917e1e9f3e6bf9a6a3509a2524d40c22d318e2c04b4'
$checksumType = 'sha256'
$url64 = 'https://github.com/byteball/byteball/releases/download/v1.10.0/Byteball-win64.exe'
$checksum64 = '909bffd4c0a250220138f34123a1304f0320df53ead99ecf89444bb7f60a618d'
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