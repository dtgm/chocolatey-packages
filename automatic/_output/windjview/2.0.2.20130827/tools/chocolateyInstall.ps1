$packageName = 'WinDjView'
$installerType = 'EXE'
$url = 'http://downloads.sourceforge.net/windjview/WinDjView-2.0.2-Setup.exe'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
