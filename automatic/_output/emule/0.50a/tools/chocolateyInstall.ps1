$packageName = 'emule'
$installerType = 'EXE'
$url = 'http://surfnet.dl.sourceforge.net/project/emule/eMule/0.50a/eMule0.50a-Installer.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes