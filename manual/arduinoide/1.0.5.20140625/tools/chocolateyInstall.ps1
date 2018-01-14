$packageName = 'arduinoide'
$installerType = 'EXE'
$url = 'https://downloads.arduino.cc/arduino-1.0.5-r2-windows.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes