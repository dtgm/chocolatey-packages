$packageName = 'smartmontools'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/smartmontools/files/smartmontools/6.6/smartmontools-6.6-1.win32-setup.exe/download'
$checksum = 'e36fba6d92c861e948fd90cbc991dc43d299534ee8023bfb1009d977a3d49472'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"