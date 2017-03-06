$packageName = 'ares'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/aresgalaxy/files/aresgalaxy/AresRegular242_072116/aresregular242_installer.exe'
$checksum = '95a90ef73ee56e0343dea8a8e0b43887be2a61fc7e471307251378922910352d'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"