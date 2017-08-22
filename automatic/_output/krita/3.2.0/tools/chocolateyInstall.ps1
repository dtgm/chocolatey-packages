$packageName = 'krita'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.kde.org/stable/krita/3.2.0/krita-3.2.0-x86-setup.exe'
$checksum = '7ad7d845a9e150f1e1a4410c8663d0bf31bd09e731e40f32dea101252d6e52d3'
$checksumType = 'sha256'
$url64 = 'https://download.kde.org/stable/krita/3.2.0/krita-3.2.0-x64-setup.exe'
$checksum64 = '9cd69b451fb8d2ee1b2b4a2bec754a3381c6f6ac60bb021dbcf7a7f3697a90f9'
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