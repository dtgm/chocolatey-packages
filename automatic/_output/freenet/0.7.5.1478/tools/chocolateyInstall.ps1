$packageName = 'freenet'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://downloads.freenetproject.org/alpha/installer/FreenetInstaller-1478.exe'
$checksum = 'cb15513fb0c345f4113a56825ff74b72e743777a9de05436109a02b409aa6d70'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"