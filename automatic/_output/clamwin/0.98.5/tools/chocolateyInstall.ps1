$packageName = 'clamwin'
$installerType = 'exe'
$url = 'http://iweb.dl.sourceforge.net/project/clamwin/clamwin/0.98.5/clamwin-0.98.5-setup.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes