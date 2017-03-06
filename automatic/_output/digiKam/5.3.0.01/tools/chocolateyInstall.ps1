$packageName = 'digikam'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.kde.org/stable/digikam/digiKam-5.3.0-01-Win32.exe'
$checksum = 'f6a5291746fd7b6d3d57e9f6459534bd664eeafa3e4c20bdb6ebce81e86165b9'
$checksumType = 'sha256'
$url64 = 'http://download.kde.org/stable/digikam/digiKam-5.3.0-01-Win64.exe'
$checksum64 = '44d9927444dd924d2b56e291bc0c495e3e268725baea7b6f8195b4722503c2fc'
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