$packageName = 'ares'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/aresgalaxy/files/aresgalaxy/AresRegular235_101315/aresregular235_installer.exe/download'
$checksum = '8bd75247f25f97e20447b974cafed37e10018991'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"