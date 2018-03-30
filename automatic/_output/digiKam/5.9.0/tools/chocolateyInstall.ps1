$packageName = 'digikam'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.kde.org/stable/digikam/digiKam-5.9.0-01-Win32.exe'
$checksum = 'd5ee3d86274b528d16b348c2d09156ab3f6a3f63de064f6905ee4264dce5f5c9'
$checksumType = 'sha256'
$url64 = 'https://download.kde.org/stable/digikam/digiKam-5.9.0-01-Win64.exe'
$checksum64 = '54611d9cf28f2d252798331dee1b41f291a70a27c5216b8b9865600719fead1a'
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