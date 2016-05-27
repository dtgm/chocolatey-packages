$packageName = 'freenet'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://downloads.freenetproject.org/alpha/installer/FreenetInstaller-1473.exe'
$checksum = '22e0eab8fff889d60f8904389c37db176eb32556686aff9536fc7e50fcad5f72'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"