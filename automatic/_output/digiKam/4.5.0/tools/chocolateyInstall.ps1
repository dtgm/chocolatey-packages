$packageName = 'digiKam'
$installerType = 'exe'
$url = 'http://download.kde.org/stable/digikam/digiKam-installer-4.5.0-win32.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes