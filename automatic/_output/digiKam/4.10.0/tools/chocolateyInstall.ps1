$packageName = 'digikam'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.kde.org/stable/digikam/digiKam-installer-4.10.0-win32.exe'
$checksum = 'b34b8b3961fa4e69aaf709d4d21debf32cf8f09c'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"