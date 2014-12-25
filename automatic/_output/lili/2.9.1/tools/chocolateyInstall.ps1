$packageName = 'lili'
$installerType = 'exe'
$url = 'http://download.tuxfamily.org/lilicreator/stable/LinuxLive USB Creator 2.9.1.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
