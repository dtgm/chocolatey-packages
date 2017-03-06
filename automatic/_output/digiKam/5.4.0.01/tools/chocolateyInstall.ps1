$packageName = 'digikam'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.kde.org/stable/digikam/digiKam-5.4.0-01-Win32.exe'
$checksum = '59303341ca68c90f6144d43f08d56ec99a16224239aaa3ad97c4648c1a6b5d18'
$checksumType = 'sha256'
$url64 = 'http://download.kde.org/stable/digikam/digiKam-5.4.0-01-Win64.exe'
$checksum64 = '0c151f7c254dbf7bed0311665cd49d81cbb0e244fcc5a813cf9c34f011a9920a'
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