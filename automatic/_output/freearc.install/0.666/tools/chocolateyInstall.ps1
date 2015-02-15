$packageName = 'freearc.install'
$installerType = 'EXE'
$url = 'http://freearc.org/download/0.666/FreeArc-0.666-win32.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
