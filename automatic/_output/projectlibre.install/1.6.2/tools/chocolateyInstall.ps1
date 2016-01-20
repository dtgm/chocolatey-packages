$packageName = 'projectlibre.install'
# due to limitations of Ketarin/chocopkgup when using repos like sf.net:
$url = 'http://sourceforge.net/projects/projectlibre/files/ProjectLibre/1.6.2/projectlibre-1.6.2.msi/download'
$checksum = '{checksum}'
$checksumType = 'sha1'
$installerType = 'msi'
$partialInstallArgs = '/quiet /qn /norestart TARGETDIR='
if (Get-ProcessorBits 64) {
  $installPath = ${Env:ProgramFiles(x86)}
} else {
  $installPath = $Env:ProgramFiles
}
$installArgs = $($partialInstallArgs + '"' + $installPath + '"')
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"