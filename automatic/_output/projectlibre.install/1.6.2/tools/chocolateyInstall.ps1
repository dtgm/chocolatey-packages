$packageName = 'projectlibre.install'
$url = 'http://sourceforge.net/projects/projectlibre/files/ProjectLibre/1.6.2/projectlibre-1.6.2.msi/download'
$checksum = '37be5a8c0ee104f52a235b521c4d731658a1f002'
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