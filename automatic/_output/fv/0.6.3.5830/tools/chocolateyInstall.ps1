$packageName = 'fv'
$installerType = 'msi'
$partialInstallArgs = '/quiet /qn /norestart TARGETDIR='
# get value for TARGETDIR based on Wow6432node arch
$is64bit = (Get-WmiObject Win32_Processor).AddressWidth -eq 64
if ($is64bit) {
  $installPath = ${Env:ProgramFiles(x86)}
} else {
  $installPath = $Env:ProgramFiles
}
# append application install folder
$installPath = Join-Path $installPath 'FileVerifier++'
# arguments presented to 'msi -i' via Install-ChocolateyPackage
$installArgs = $($partialInstallArgs + '"' + $installPath + '"')
# automatic pkg hack due to limitations of Ketarin/chocopkgup when using repos like sf.net
$url = 'http://sourceforge.net/projects/fileverifier/files/fileverifier/0.6.3.5830/fv-0.6.3.5830W.msi/download'
$checksum = 'a102edf4942cbd96ff56dea14f12ae257eac9e2e'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$installArgs" "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"