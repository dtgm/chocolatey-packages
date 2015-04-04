$packageName = 'TeXnicCenter'
$installerType = 'EXE'
$url = 'http://sourceforge.net/projects/texniccenter/files/TeXnicCenter/2%20Beta%202/TXCSetup_2Beta2_Win32.exe/download'
$url64 = 'http://sourceforge.net/projects/texniccenter/files/TeXnicCenter/2%20Beta%202/TXCSetup_2Beta2_x64.exe/download'
$silentArgs = '/SP- /SILENT /NORESTART' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT"
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
