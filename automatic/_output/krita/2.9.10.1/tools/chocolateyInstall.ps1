$packageName = 'krita'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://files.kde.org/krita/windows/krita_x86_2.9.10.0.msi'
$checksum = '8f06f6b50917d316ed44c2a2c8df22871147b4bb'
$checksumType = 'sha1'
$url64 = 'http://files.kde.org/krita/windows/krita_x64_2.9.10.0.msi'
$checksum64 = '39ee01ba15626d8a38dabf51045a8f37bf1abece'
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