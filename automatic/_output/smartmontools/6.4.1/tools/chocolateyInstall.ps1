$packageName = 'smartmontools'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/smartmontools/files/smartmontools/6.4/smartmontools-6.4-1.win32-setup.exe/download'
$checksum = '5ba5a872745c915d7bd31eb4e11943853dbe04b1'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"