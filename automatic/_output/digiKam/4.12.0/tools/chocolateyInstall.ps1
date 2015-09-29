$packageName = 'digikam'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.kde.org/stable/digikam/digiKam-installer-4.12.0-win32.exe'
$checksum = '69564a8f22cb37b70ce00cd97f6ea3d334d59ba0'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"