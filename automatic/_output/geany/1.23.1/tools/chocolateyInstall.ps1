$packageName = 'geany'
$installerType = 'EXE'
#$url = 'http://download.geany.org/geany-{version}_setup.exe'
$url = 'http://download.geany.org/geany-1.23.1_setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes