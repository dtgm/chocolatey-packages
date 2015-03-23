$packageName = 'frhed.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/frhed/files/1.%20Stable%20Releases/1.6.0/Frhed-1.6.0-Setup.exe/download'
$checksum = 'd614079295483579bda64b27bdaf771ab91ba329'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"