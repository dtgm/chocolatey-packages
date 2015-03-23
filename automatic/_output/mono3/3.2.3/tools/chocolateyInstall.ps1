
$packageName = 'mono3'
$installerType = 'exe'
$url = 'http://download.mono-project.com/archive/3.2.3/windows-installer/mono-3.2.3-gtksharp-2.12.11-win32-0.exe'
$url64 = $url
$silentArgs = '/SILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
