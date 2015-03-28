$packageName = 'trillian'
$installerType = 'EXE'
$url = 'http://cerulean.cachenetworks.com/trillian-v5.4.0.12.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes