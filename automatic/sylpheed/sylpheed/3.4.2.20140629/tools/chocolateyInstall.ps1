$packageName = 'sylpheed'
$installerType = 'exe'
$url = 'http://jaist.dl.sourceforge.jp/sylpheed/61368/Sylpheed-3.4.2_setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes