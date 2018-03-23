$packageName = 'gramps'
$installerType = 'exe'
$silentArgs = '/S'
$urlArray = @('https://sourceforge.net/projects/gramps/files/Stable/4.2.8/GrampsAIO-4.2.8-3_win32.exe/download', 'https://sourceforge.net/projects/gramps/files/Stable/4.2.8/GrampsAIO-4.2.8-1_win64.exe/download')
$url = $urlArray[0]
$checksum = '7f30ab3af58b28cd5a5f4ecbb73074df43292064dfe60d2a9d2355684bcee91b'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = 'e5f40b6f0bc2bffe0f25293c8a11995ada0b0dbd7531170f11cc35a5749dd25e'
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