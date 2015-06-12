$packageName = 'bluej-bundled'
$installerType = 'msi'
$url = 'http://www.bluej.org/download/files/bluej-bundled-311.msi'
$silentArgs = '/qb'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes