$packageName = 'ares'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/aresgalaxy/files/aresgalaxy/AresRegular232_082715/aresregular232_installer.exe/download'
$checksum = 'b7e12e146438bd15c96416e8b70dd47e072d6843'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"