$packageName = 'byteball'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/byteball/byteball/releases/download/v1.9.1/Byteball-win32.exe'
$checksum = 'bef31aa65927999f20722b5260b20226508b5deb8fa7c2e602274bb17f7a09d3'
$checksumType = 'sha256'
$url64 = 'https://github.com/byteball/byteball/releases/download/v1.9.1/Byteball-win64.exe'
$checksum64 = 'f3516e5a721ee70e2740bd984bad1fd8a10f6cfacdda48b0c0226f3d3b6ff8d9'
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