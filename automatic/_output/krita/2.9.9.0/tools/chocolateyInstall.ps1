$packageName = 'krita'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://files.kde.org/krita/windows/krita_x86_2.9.9.0.msi'
$checksum = 'd7de36319c9d186e3f113e04fad7d460f091a74f'
$checksumType = 'sha1'
$url64 = 'http://files.kde.org/krita/windows/krita_x64_2.9.9.0.msi'
$checksum64 = '9ed1876419171782bbe4d7309a12cdf27fc6ff9f'
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