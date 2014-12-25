$packageName = 'lmms'
$packageVersion = '1.1.0'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'https://github.com/LMMS/lmms/releases/download/v1.1.0/lmms-1.1.0-win32.exe'
$url64 = 'https://github.com/LMMS/lmms/releases/download/v1.1.0/lmms-1.1.0-win64.exe'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes
