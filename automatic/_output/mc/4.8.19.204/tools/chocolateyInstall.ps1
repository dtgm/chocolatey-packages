$packageName = 'mc'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://sourceforge.net/projects/mcwin32/files/mcwin32-build204-setup.exe'
$checksum = 'fdf8d0f567e27d18a3b52dd4cdf1523255af748025268afee69bb7394e16475b'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"