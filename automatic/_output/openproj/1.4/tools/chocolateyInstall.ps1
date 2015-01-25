$packageName = 'openproj'
$installerType = 'msi'
$partialInstallArgs = '/quiet /qn /norestart TARGETDIR='
$is64bit = (Get-WmiObject Win32_Processor).AddressWidth -eq 64
if ($is64bit) {$installPath = ${Env:ProgramFiles(x86)}} else {$installPath = $Env:ProgramFiles}
$installArgs = $($partialInstallArgs + '"' + $installPath + '"')
# due to limitations of Ketarin/chocopkgup when using repos like sf.net:
$url = 'http://sourceforge.net/projects/openproj/files/OpenProj%20Binaries/1.4/openproj-1.4.msi/download'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$installArgs" "$url" -validExitCodes $validExitCodes
