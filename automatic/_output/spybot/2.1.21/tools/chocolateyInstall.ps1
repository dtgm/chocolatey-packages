$packageName = 'spybot'
$installerType = 'EXE'
#$url = 'http://spybotupdates.com/files/spybotsd-2.1.20-SR1.exe'
#$url = 'http://spybotupdate.biz/files/spybotsd-2.1.20-SR1.exe'
$url = 'http://spybotupdate.biz/files/spybotsd-2.1.21-SR2.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes