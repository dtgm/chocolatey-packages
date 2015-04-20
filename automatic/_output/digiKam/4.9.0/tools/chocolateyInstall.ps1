$packageName = 'digikam'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.kde.org/stable/digikam/digiKam-installer-4.9.0-win32.exe'
$checksum = 'b646142a410c9d6ab9a9f054f9552d1e5dc395af'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"