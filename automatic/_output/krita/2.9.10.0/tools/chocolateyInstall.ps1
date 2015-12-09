$packageName = 'krita'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://files.kde.org/krita/windows/krita_x86_2.9.10.0.msi'
$checksum = '935923b83ba647a9b35b12cae47b78da4041cafa'
$checksumType = 'sha1'
$url64 = 'http://files.kde.org/krita/windows/krita_x64_2.9.10.0.msi'
$checksum64 = '99807bd3fd9c48348106fb76b27e17db27cb3837'
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