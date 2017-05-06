$packageName = 'storjshare'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/Storj/storjshare-gui/releases/download/v5.0.1/storjshare-gui.win32.exe'
$checksum = '1968ee3e1f9f1cbc1e1a0c5a79afa0d479f1443b6478d095839eb0bc63f24264'
$checksumType = 'sha256'
$url64 = 'https://github.com/Storj/storjshare-gui/releases/download/v5.0.1/storjshare-gui.win64.exe'
$checksum64 = '1d7a055ce4ea6f6e1fe1200910f9dd99a7dce7483a84dd21d2e5a075947d6799'
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