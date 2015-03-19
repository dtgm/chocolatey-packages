$packageName = 'windows-tweaker'
$installerType = 'EXE'
$url = 'http://tweaker.blob.core.windows.net/downloads/Windows_Tweaker_5.2-Setup.exe'
$silentArgs = '/S /v/qn'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes