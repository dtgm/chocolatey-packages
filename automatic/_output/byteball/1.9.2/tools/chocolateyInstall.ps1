$packageName = 'byteball'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/byteball/byteball/releases/download/v1.9.2/Byteball-win32.exe'
$checksum = '1b47f09ec651e93a1e57b2e0aaca0427cfcc12c3696d0cb4f69e1951570fab70'
$checksumType = 'sha256'
$url64 = 'https://github.com/byteball/byteball/releases/download/v1.9.2/Byteball-win64.exe'
$checksum64 = 'd34525893bd52dcf5cc9c461cb71ba19ca97701cf418806334ef9ae5ab5a3058'
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