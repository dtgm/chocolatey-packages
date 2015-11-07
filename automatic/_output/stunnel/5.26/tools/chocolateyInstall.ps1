$packageName = 'stunnel'
$url = 'https://www.stunnel.org/downloads/archive/5.x/stunnel-5.26-installer.exe'
$checksum = 'c8b3eec3b269fda39b2727e32a08c415670d9793'
$checksumType = 'sha1'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"