$packageName = '{{PackageName}}'
$installerType = 'msi'
$partialInstallArgs = '/quiet /qn /norestart TARGETDIR='
$is64bit = (Get-WmiObject Win32_Processor).AddressWidth -eq 64
if ($is64bit) {$installPath = ${Env:ProgramFiles(x86)}} else {$installPath = $Env:ProgramFiles}
$installArgs = $($partialInstallArgs + '"' + $installPath + '"')
# due to limitations of Ketarin/chocopkgup when using repos like sf.net:
# 1. url is partly hardcoded and 2. DownloadUrlx64 is used to pass non-compatible nuget version number
$url = 'http://sourceforge.net/projects/pdfedit/files/pdfedit-win32/pdfedit-{{DownloadUrlx64}}.msi/download'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$installArgs" "$url" -validExitCodes "$validExitCodes"
