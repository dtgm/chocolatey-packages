$packageName = 'create-synchronicity.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/synchronicity/files/Create%20Synchronicity/Create%20Synchronicity%206.0/Create_Synchronicity-6.0_Setup.exe/download'
$checksum = 'be87ef95d3ab8ceb3d6c953057e095a4b63c2803'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"