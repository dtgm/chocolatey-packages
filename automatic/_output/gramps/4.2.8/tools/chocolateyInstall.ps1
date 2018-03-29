$packageName = 'gramps'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/gramps-project/gramps/releases/download/v4.2.8/GrampsAIO-4.2.8-3_win32.exe'
$checksum = '7f30ab3af58b28cd5a5f4ecbb73074df43292064dfe60d2a9d2355684bcee91b'
$checksumType = 'sha256'
$url64 = 'https://github.com/gramps-project/gramps/releases/download/v4.2.8/GrampsAIO-4.2.8-1_win64.exe'
$checksum64 = '794cc709dba7d19316a080d78958e9b05b26bfa786ae853520ec27d777af2d22'
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