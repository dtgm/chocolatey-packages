$packageName = 'krita'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://files.kde.org/krita/3/windows/krita-3.0-x86-setup.exe'
$checksum = '2944a822d13de754dbb4e91d63edadb05af3dfa03d1524699553663174d3bc9e'
$checksumType = 'sha1'
$url64 = 'http://files.kde.org/krita/3/windows/krita-3.0-x64-setup.exe'
$checksum64 = '914a40a1ff8aa08805d2cfdf32f9d46b793510bb97c1888887538aa7f82d7085'
$checksumType64 = 'sha1'
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