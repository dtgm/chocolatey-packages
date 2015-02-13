$packageName = 'linkshellextension'
$installerType = 'exe'
$url = 'http://schinagl.priv.at/nt/hardlinkshellext/HardLinkShellExt_win32.exe'
$url64 = 'http://schinagl.priv.at/nt/hardlinkshellext/HardLinkShellExt_X64.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
Install-ChocolateyPackage -packageName "$packageName" -fileType "$installerType" -url "$url" -url64bit "$url64" -silentArgs "$silentArgs" -validExitCodes $validExitCodes