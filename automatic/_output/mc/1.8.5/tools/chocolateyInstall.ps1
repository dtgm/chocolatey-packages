$packageName = 'mc'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = 'http://sourceforge.net/projects/mcwin32/files/mcwin32-build185-setup.exe/download'
$validExitCodes = @(0)
Install-ChocolateyPackage -packageName "$packageName" -installerType "$installerType" -url "$url" -silentArgs "$silentArgs" -validExitCodes $validExitCodes