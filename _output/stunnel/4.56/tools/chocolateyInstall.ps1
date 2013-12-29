$packageName = 'stunnel'
$installerType = 'EXE'
$url  = 'ftp://ftp.stunnel.org/stunnel/stunnel-4.56-installer.exe'
$silentArgs = '/S'
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"