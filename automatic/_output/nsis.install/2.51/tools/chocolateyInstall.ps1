$packageName = 'nsis.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/nsis/files/NSIS%202/2.51/nsis-2.51-setup.exe/download'
$checksum = '2d321cf3ba700eee4e2ca234219708a6fb3693c8'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"