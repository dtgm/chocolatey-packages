$packageName = 'ares'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/aresgalaxy/files/aresgalaxy/AresRegular234_100615/aresregular234_installer.exe/download'
$checksum = '34abd9feab410e2f7c2d99fcd7f60c4addcaa333'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"