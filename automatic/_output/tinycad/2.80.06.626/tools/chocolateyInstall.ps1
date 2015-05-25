$packageName = 'tinycad'
$installerType = 'EXE'
$url = 'http://netcologne.dl.sourceforge.net/project/tinycad/Official Release/2.80.06/TinyCAD_2.80.06_626_Production_Release.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes