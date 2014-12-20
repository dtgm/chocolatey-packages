$packageName = 'multibit'
$installerType = 'exe'
$url = 'https://multibit.org/releases/multibit-0.5.18/multibit-0.5.18-windows-setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
