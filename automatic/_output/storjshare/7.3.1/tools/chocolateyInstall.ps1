$packageName = 'storjshare'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/Storj/storjshare-gui/releases/download/v7.3.1/storjshare-gui.win32.exe'
$checksum = '99c36ae2d6a4ffe6a67a8b553c0158fb0c14693ca207eb718dabb29a70a2e746'
$checksumType = 'sha256'
$url64 = 'https://github.com/Storj/storjshare-gui/releases/download/v7.3.1/storjshare-gui.win64.exe'
$checksum64 = '6df7635e092ffcbf51d8527b76af4339e79305aecf708548d17a6ac1e925e2c0'
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