$packageName = 'digikam'
$installerType = 'exe'
$url = 'http://download.kde.org/stable/digikam/digiKam-installer-4.8.0-win32.exe'
$checksum = 'd2c7b3f01b002b9876828466821cc493739b22d5'
$checksumType = 'sha1'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
