$packageName = 'privoxy'
$packageVersion = '3.0.26'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/ijbswa/files/Win32/3.0.26 (stable)/privoxy_setup_3.0.26.exe'
$checksum = '9d7a960a3adc757b8d8f59604b6e5c2be1b668c2aad11620be1448fa5657d178'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
