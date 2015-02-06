$packageName = 'cyberduck.install'
$installerType = 'EXE'
$url  = 'http://update.cyberduck.io/windows/Cyberduck-Installer-4.6.4.exe'
$silentArgs = '/S'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes