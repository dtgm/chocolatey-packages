$packageName = 'primecoin'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://hivelocity.dl.sourceforge.net/project/primecoin/0.1.2/primecoin-0.1.2-win32-setup.exe'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes