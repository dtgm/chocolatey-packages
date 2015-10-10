$packageName = 'krita'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://files.kde.org/krita/windows/krita_x86_2.9.7.6.msi'
$checksum = '8c546ca193d7d6556c901865d66b7f362204404d'
$checksumType = 'sha1'
$url64 = 'http://files.kde.org/krita/windows/krita_x64_2.9.7.6.msi'
$checksum64 = '7fa0d49961c3c74115192f07c8503a13130c0f70'
$checksumType64 = 'sha1'
$validExitCodes = @(0,3010)
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