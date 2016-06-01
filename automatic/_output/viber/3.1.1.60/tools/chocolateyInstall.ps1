$packageName = 'viber'
$installerType = 'EXE'
$url = 'http://download.cdn.viber.com/cdn/desktop/windows/ViberSetup.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes