$packageName = 'nsis.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/nsis/files/NSIS%203/3.01/nsis-3.01-setup.exe/download'
$checksum = 'eb487074ce7f5b320e1b049347ae043ec9d0aa3a0d0f9febb2eb5c2e741471ee'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"