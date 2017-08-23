$packageName = 'ares'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/aresgalaxy/files/aresgalaxy/AresRegular246_082217/aresregular246_installer.exe/download'
$checksum = '54a88fdb30b8685c94637221af3e910fe1ab81200b06ffa4df3e95ae55212513'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"