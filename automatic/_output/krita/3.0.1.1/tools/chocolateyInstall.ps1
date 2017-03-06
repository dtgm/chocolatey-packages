$packageName = 'krita'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.kde.org/stable/krita/3.0.1.1/krita-3.0.1.1-x86-setup.exe'
$checksum = '4504e9b3024f3ef060f746ebfaba55d095e984651d4c11cff52b44c16be4f94a'
$checksumType = 'sha256'
$url64 = 'http://download.kde.org/stable/krita/3.0.1.1/krita-3.0.1.1-x64-setup.exe'
$checksum64 = '6a5e85fa6c3e845e8393a97298a9e22437ada21b4fb3b014f381814dba66e23d'
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