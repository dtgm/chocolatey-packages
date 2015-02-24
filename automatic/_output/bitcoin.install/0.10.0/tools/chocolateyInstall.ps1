$packageName = 'bitcoin.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitcoin.org/bin/0.10.0/bitcoin-0.10.0-win32-setup.exe'
$url64 = 'https://bitcoin.org/bin/0.10.0/bitcoin-0.10.0-win64-setup.exe'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes