$packageName = 'byteball'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/byteball/byteball/releases/download/v1.11.0/Byteball-win32.exe'
$checksum = '07f97d16b84a9ac158b3cb07a7d244430a65d51ed2189b9e6011f950f70b8abe'
$checksumType = 'sha256'
$url64 = 'https://github.com/byteball/byteball/releases/download/v1.11.0/Byteball-win64.exe'
$checksum64 = '307ca94c76acb2c5e6134042a79148c43e9ef2bdfc10eb2cb8c4683d6a9ead42'
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