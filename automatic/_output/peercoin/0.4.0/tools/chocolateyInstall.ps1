$packageName = 'peercoin'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://hivelocity.dl.sourceforge.net/project/ppcoin/0.4.0/ppcoin-0.4.0-win32-setup.exe'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes