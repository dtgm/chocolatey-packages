$packageName = 'ares'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/aresgalaxy/files/aresgalaxy/AresRegular238_122415/aresregular238_installer.exe/download'
$checksum = '7b93392d9212529906e36ffbfe99a6b8bb6eb625'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"