$packageName = 'feathercoin'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://www.feathercoin.com/dl/feathercoin-0.8.7.1-setup.exe'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes