$packageName = 'acestream'
$installerType = 'EXE'
$url = 'http://dl.acestream.org/Ace_Stream_Media_2.3.0-next.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes