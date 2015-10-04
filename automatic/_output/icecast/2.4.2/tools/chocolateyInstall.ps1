$packageName = 'icecast'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://downloads.xiph.org/releases/icecast/icecast_win32_2.4.2.exe'
$checksum = 'a44ed48805f0b22dfad212cee1a728f3a09fa734'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"