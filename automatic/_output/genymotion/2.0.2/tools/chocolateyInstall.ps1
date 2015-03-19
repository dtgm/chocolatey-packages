$packageName = 'genymotion'
$installerType = 'EXE'
$url = 'https://ssl-files.genymotion.com/genymotion/genymotion-2.0.2/genymotion-2.0.2.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes