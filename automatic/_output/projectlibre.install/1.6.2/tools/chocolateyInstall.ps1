$packageName = 'projectlibre.install'
$url = 'https://sourceforge.net/projects/projectlibre/files/ProjectLibre/1.6.2/projectlibre-1.6.2.msi/download'
$checksum = '455bc2801e0dac6a404d024d88f5b251894eda3f'
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