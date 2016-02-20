$packageName = 'ares'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/aresgalaxy/files/aresgalaxy/AresRegular239_021516/aresregular239_installer.exe/download'
$checksum = '5ab23ac703450ba9c2464e56578481ef8152b62d'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"