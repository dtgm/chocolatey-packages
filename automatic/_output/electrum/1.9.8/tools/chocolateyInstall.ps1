$packageName = 'electrum'
$packageVersion = '1.9.8'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.electrum.org/electrum-1.9.8-setup.exe'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes