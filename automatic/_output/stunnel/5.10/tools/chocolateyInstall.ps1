$packageName = 'stunnel'
$version = '5.10'
$url = 'https://www.stunnel.org/downloads/stunnel-5.10-installer.exe'
$installerType = 'EXE'
$silentArgs = '/S'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes