$packageName = 'meld'
$installerType = 'EXE'
#$url = 'https://meld-installer.googlecode.com/files/meld-{version}.exe'
$url = 'https://meld-installer.googlecode.com/files/meld-1.8.1.0.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes