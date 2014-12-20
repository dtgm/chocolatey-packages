$packageName = 'lmms'
$packageVersion = '1.0.3'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'https://github.com/LMMS/lmms/releases/download/v1.0.3/lmms-1.0.3-win32.exe'
$url64 = 'https://github.com/LMMS/lmms/releases/download/v1.0.3/lmms-1.0.3-win64.exe'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes
