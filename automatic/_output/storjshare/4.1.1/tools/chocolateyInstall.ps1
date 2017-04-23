$packageName = 'storjshare'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/Storj/storjshare-gui/releases/download/v4.1.1/storjshare-gui.win32.exe'
$checksum = 'b063950121aa0135fe1a0b77fc55b7b727852c7af92e59b13edef3d96b3038a2'
$checksumType = 'sha256'
$url64 = 'https://github.com/Storj/storjshare-gui/releases/download/v4.1.1/storjshare-gui.win64.exe'
$checksum64 = '8d98ce129e66e4ae7053fa50f6c4fb3c21bd6eec5c8af2c2d11bcbfbaee7fc75'
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