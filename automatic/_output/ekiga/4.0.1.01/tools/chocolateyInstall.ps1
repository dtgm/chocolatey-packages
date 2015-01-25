$packageName = 'ekiga'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://ftp.gnome.org/pub/gnome/binaries/win32/ekiga/4.0/ekiga-setup-4.0.1+.exe'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes