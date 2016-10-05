$packageName = 'arduinoide'
$installerType = 'EXE'
#$url = 'https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/arduino/arduino-{version}-windows.exe'
$url = 'https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/arduino/arduino-1.0.5-windows.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes