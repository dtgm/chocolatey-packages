$packageName = 'littleregistrycleaner'
$installerType = 'EXE'
#$url = 'http://switch.dl.sourceforge.net/project/littlecleaner/Little%20Registry%20Cleaner/{version}/{anchor1}.exe'
$url = 'http://switch.dl.sourceforge.net/project/littlecleaner/Little Registry Cleaner/1.6/Little_Registry_Cleaner_07_07_2013.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes