$packageName = 'storjshare'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/Storj/storjshare-gui/releases/download/v6.4.0/storjshare-gui.win32.exe'
$checksum = '1686ddbacac88dc626a97319493f39a22e0f2774a5d6e5c03c9f7886e8010155'
$checksumType = 'sha256'
$url64 = 'https://github.com/Storj/storjshare-gui/releases/download/v6.4.0/storjshare-gui.win64.exe'
$checksum64 = '5db767bcd9f4c7dbb3729e483e0a9ab66d5f708399cbc3f99b91a065d581b4f7'
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