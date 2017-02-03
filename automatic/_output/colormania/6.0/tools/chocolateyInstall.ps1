$packageName = 'colormania'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://www.blacksunsoftware.com/downloads/ColorManiaSetup.exe'
$checksum = '2d15001d6da29a33b1359371575b2eca45f3f8d90ef5e10a70e93681d2944d63'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"