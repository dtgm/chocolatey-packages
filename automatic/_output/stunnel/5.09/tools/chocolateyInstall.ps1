$packageName = 'stunnel'
$version = '5.09'
$url = 'https://www.stunnel.org/downloads/stunnel-5.09-installer.exe'
$installerType = 'EXE'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"