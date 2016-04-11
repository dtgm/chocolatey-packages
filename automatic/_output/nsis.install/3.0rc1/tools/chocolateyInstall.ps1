$packageName = 'nsis.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/nsis/files/NSIS%202/2.50/nsis-2.50-setup.exe/download'
$checksum = '88c5586549b37c5653a9d937c64184d2b83bba51'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"