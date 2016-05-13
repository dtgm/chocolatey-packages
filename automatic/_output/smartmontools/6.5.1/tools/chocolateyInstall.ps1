$packageName = 'smartmontools'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/smartmontools/files/smartmontools/6.5/smartmontools-6.5-1.win32-setup.exe'
$checksum = '536bf0c1b28a2a6b66d0e5ed178bc3ee7856f7cf'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"