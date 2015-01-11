$packageName = 'gajim'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://gajim.org/downloads/0.16/gajim-0.16-1.exe'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes