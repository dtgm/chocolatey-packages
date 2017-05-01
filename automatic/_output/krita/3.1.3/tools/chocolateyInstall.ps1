$packageName = 'krita'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.kde.org/stable/krita/3.1.3/krita-3.1.3-x86-setup.exe'
$checksum = '6629f8844bb394ce8e50981d85ad9d14137bc2aae40ceea5f7472cf2c3795ff5'
$checksumType = 'sha256'
$url64 = 'https://download.kde.org/stable/krita/3.1.3/krita-3.1.3-x64-setup.exe'
$checksum64 = 'acfb3ad82a43cbdee1bf1a8e867a51183f5a7a2a26e12ec0e7e1cf1c1a22a1d0'
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