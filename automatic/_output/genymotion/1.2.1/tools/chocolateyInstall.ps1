$packageName = 'genymotion'
$installerType = 'EXE'
#$url = 'https://genymotion-genymobile.netdna-ssl.com/genymotion/genymotion-{version}/genymotion-{version}.exe'
$url = 'https://genymotion-genymobile.netdna-ssl.com/genymotion/genymotion-1.2.1/genymotion-1.2.1.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes