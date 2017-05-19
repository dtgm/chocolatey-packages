$packageName = 'ares'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/aresgalaxy/files/aresgalaxy/AresRegular245_051917/aresregular245_installer.exe/download'
$checksum = '05cb3b1ada95028e2f689d052d1028f8fb4d5f95a4480d687953e23cd1af4c75'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"