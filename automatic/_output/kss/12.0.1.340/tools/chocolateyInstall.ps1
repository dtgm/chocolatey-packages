$packageName = 'kss'
$installerType = 'EXE'
$url = 'http://special.kaspersky-labs.com/SVF6C491AYWH6R946YMF/setup.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes