$packageName = '{{PackageName}}'
$url = '{{DownloadUrlx64}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$installerType = 'msi'
$partialInstallArgs = '/quiet /qn /norestart TARGETDIR='

# get value for TARGETDIR based on Wow6432node arch
if (Get-ProcessorBits 64) {
  $installPath = ${Env:ProgramFiles(x86)}
} else {
  $installPath = $Env:ProgramFiles
}
# append application install folder
$installPath = Join-Path $installPath 'FileVerifier++'
# arguments presented to 'msi -i' via Install-ChocolateyPackage
$installArgs = $($partialInstallArgs + '"' + $installPath + '"')
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$installArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"