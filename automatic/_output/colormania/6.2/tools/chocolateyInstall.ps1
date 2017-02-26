$packageName = 'colormania'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://www.blacksunsoftware.com/downloads/ColorManiaSetup.exe'
$checksum = '6d9aa2c8e4877b82a17af4e18a8fb0f71f349c5c4ed0e16c615bcbae5c339da1'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"