$packageName = 'storjshare'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/Storj/storjshare-gui/releases/download/v7.3.2/storjshare-gui.win32.exe'
$checksum = '9b34cca738c43b0d43b8a02bcb13017782477366cb910df536d85fe74c013948'
$checksumType = 'sha256'
$url64 = 'https://github.com/Storj/storjshare-gui/releases/download/v7.3.2/storjshare-gui.win64.exe'
$checksum64 = '0b2d7cf7aaff50bae91200961ba64cb04d43694f5904266c7b22044843118b91'
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