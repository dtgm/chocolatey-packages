$packageName = 'atraci'
$installerType = 'EXE'
$url = 'https://raw.githubusercontent.com/Atraci/Atraci/gh-pages/releases/0.6.0/win/Atraci.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes