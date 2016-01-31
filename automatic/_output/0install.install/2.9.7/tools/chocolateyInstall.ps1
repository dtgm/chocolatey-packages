$packageName = '0install.install'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://0install.de/files/zero-install.exe'
$checksum = '98582b91117a911418e97960fad7e5882c64f4fe'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"