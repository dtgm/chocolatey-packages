$packageName = 'nsis.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/nsis/files/NSIS%202/2.50/nsis-2.50-setup.exe/download'
$checksum = 'ff93bc8d84c1abd103dc7bedb35024cff8228e4a'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"