$packageName = 'padmanager'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://padmanager.org/download/pm_setup.exe'
$checksum = '0662e721eb9c3c4eb6b8bca98d2717bf1972f0cb'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"