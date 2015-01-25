$packageName = 'pandabank.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/pandacoin-official/pandacoin/releases/download/v3.0.2/pandacoin-3.0.2.0-win32-setup.exe'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes