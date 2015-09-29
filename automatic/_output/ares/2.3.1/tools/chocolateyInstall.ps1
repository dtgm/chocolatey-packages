$packageName = 'ares'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/aresgalaxy/files/aresgalaxy/AresRegular231_072615/aresregular231_installer.exe/download'
$checksum = '7bfba3bb4f13b3e4af5c2cd90ad89aa4b9b0cee3'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"