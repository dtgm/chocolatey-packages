$packageName = 'systemninja'
$installerType = 'EXE'
#$url = 'http://download.thewebatom.net/51de9bb3f0f5b/ninja-setup-{version}.exe'
$url = 'http://download.thewebatom.net/51de9bb3f0f5b/ninja-setup-2.4.3.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes