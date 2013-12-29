$packageName = 'stunnel.beta'
$installerType = 'EXE'
$url  = 'https://www.stunnel.org/downloads/beta/stunnel-5.00b1-installer.exe'
$silentArgs = '/S'
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"