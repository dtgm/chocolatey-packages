$packageName = 'fv'
$installerType = 'msi'
$installArgs = '/quiet /qn /norestart'
# due to limitations of Ketarin/chocopkgup when using repos like sf.net:
$url = 'http://sourceforge.net/projects/fileverifier/files/fileverifier/0.6.3.5830/fv-0.6.3.5830W.msi/download'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$installArgs" "$url" -validExitCodes $validExitCodes