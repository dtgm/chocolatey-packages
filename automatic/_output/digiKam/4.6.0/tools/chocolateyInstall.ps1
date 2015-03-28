$packageName = 'digikam'
$installerType = 'exe'
$url = 'http://download.kde.org/stable/digikam/digiKam-installer-4.6.0-win32.exe'
$checksum = 'ae982e33faab33cf4f8b32becb6cedafb999a8d6'
$checksumType = 'sha1'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
