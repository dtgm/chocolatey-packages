$packageName = 'fontforge'
$version = '2014.12.31.20'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/fontforge/fontforge/releases/download/20141230/FontForge-2014-12-31-Windows-r2.exe'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
