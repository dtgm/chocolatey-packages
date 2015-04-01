$packageName = 'WinEdt'
$installerType = 'EXE'
$url = 'http://www.winedt.com/work/winedt80-32.exe'
$url64 = 'http://www.winedt.com/work/winedt80-64.exe'
$silentArgs = '/S' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT"
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
