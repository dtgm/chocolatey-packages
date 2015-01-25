$packageName = 'armory'
$packageVersion = '0.92.3'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://s3.amazonaws.com/bitcoinarmory-releases/armory_0.92.3_winAll.exe'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes