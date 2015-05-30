$packageName = 'gamedownloader'
$installerType = 'EXE'
$url = 'http://netcologne.dl.sourceforge.net/project/dev-fire-gd/Game Downloader 3.9.3/Game Downloader 3.9.3 Setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes