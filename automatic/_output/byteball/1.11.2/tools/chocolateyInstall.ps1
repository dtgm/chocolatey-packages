$packageName = 'byteball'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/byteball/byteball/releases/download/v1.11.2/Byteball-win32.exe'
$checksum = '31cce515be92d43d7bf96feb83452a279a37968002fc156b81d58b3381cdde96'
$checksumType = 'sha256'
$url64 = 'https://github.com/byteball/byteball/releases/download/v1.11.2/Byteball-win64.exe'
$checksum64 = 'b8ff1d0cda16e98ff38bd080711c42c76f1722ae3e969014991dfb8e3b9e5595'
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