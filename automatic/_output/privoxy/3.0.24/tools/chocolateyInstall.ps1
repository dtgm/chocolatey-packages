$packageName = 'privoxy'
$packageVersion = '3.0.24'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/ijbswa/files/Win32/3.0.24 (stable)/privoxy_setup_3_0_24.exe'
$checksum = 'ec1f779bc5acb78c3eb7e7142be26c68fe77d3a5'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
