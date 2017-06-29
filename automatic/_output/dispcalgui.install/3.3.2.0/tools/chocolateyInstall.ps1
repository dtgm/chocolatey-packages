$packageName = 'dispcalgui.install'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://sourceforge.net/projects/dispcalgui/files/release/3.3.2.0/DisplayCAL-3.3.2.0-Setup.exe/download'
$checksum = '145c4c31f781fc1ef4235f59c9d9b150473919e68fd5ba4a179b3cb2cbb1394f'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"