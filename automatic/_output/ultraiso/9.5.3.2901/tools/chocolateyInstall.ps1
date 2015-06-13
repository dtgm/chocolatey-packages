$packageName = 'ultraiso'
$installerType = 'EXE'
#$url = 'http://dw.ezbsys.net/{anchor1}.exe'
$url = 'http://dw.ezbsys.net/uiso9_pe.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes