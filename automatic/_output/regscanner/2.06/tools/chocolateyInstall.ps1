$packageName = 'regscanner'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/regscanner_setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
Install-ChocolateyPackage -packageName "$packageName" -fileType "$installerType" -url "$url" -silentArgs "$silentArgs" -validExitCodes $validExitCodes