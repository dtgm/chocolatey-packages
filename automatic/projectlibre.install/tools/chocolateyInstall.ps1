$packageName = '{{PackageName}}'
$url = '{{DownloadUrlx64}}'
$checksum = '{{Checksum}}'
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