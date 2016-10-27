$packageName = 'ares'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/aresgalaxy/files/aresgalaxy/AresRegular243_100616/aresregular243_installer.exe'
$checksum = 'd8f35b9f23b37b7e5f7fd194de798ac09af38ea656aa78a3c468a554c68cbe17'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"