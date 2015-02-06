$packageName = 'psi.install'
$installerType = 'exe'
$silentArgs = '/S'
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$urlArray = @('http://sourceforge.net/projects/psi/files/Psi/0.15/psi-0.15-win32-setup.exe/download', 'http://sourceforge.net/projects/psi/files/Psi/0.15/psi-0.15-win64-setup.exe/download')
$url = $urlArray[0]
$url64 = $urlArray[1]
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes