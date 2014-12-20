$packageName = 'celestia'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = http://sourceforge.net/projects/celestia/files/Celestia-win32-bin/1.6.1/celestia-win32-1.6.1.exe/download
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"