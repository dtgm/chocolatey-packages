$packageName = 'peazip'
$installerType = 'EXE'
$url = 'http://www.peazip.org/downloads/peazip-5.5.0.WINDOWS.exe'
$url64 = 'http://www.peazip.org/downloads/peazip-5.5.0.WIN64.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes

