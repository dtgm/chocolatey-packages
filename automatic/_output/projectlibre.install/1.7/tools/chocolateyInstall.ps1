$packageName = 'projectlibre.install'
$url = 'https://sourceforge.net/projects/projectlibre/files/ProjectLibre/1.7/projectlibre-1.7.msi/download'
$checksum = '1f45e864097bd887f1141f9a8433cec3fb35900acef43269d16e6da4f3336195'
$checksumType = 'sha256'
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