$packageName = 'krita'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://files.kde.org/krita/windows/krita_x86_2.9.6.1.msi'
$checksum = 'a4682d110cf5b8a59144e1dac54593342dfce7d9'
$checksumType = 'sha1'
$url64 = 'http://files.kde.org/krita/windows/krita_x64_2.9.6.1.msi'
$checksum64 = '161c4eb181c9a7a5dd45361021c6e547222de5a0'
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