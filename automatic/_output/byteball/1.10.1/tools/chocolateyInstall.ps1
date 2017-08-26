$packageName = 'byteball'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/byteball/byteball/releases/download/v1.10.1/Byteball-win32.exe'
$checksum = '2c79d2f140047456d32c91a37292e66b9b9ace4a5bd54e60407bb10dce079b02'
$checksumType = 'sha256'
$url64 = 'https://github.com/byteball/byteball/releases/download/v1.10.1/Byteball-win64.exe'
$checksum64 = '1e07f3861557c6f86d5f8111aaaa48efad93f17184606d7f820619e1fb431467'
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