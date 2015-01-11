$packageName = 'opencodecs'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://downloads.xiph.org/releases/oggdsf/opencodecs_0.85.17777.exe'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes