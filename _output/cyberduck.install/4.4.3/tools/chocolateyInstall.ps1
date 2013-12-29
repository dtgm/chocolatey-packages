$packageName = 'cyberduck.install'
$installerType = 'EXE'
$url  = 'http://update.cyberduck.io/windows/Cyberduck-Installer-4.4.3.exe'
$silentArgs = '/S'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"
