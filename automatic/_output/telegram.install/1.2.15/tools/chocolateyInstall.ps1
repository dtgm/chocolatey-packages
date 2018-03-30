$packageName = 'telegram.install'
$installerType = 'exe'
$url = 'https://github.com/telegramdesktop/tdesktop/releases/download/v1.2.15/tsetup.1.2.15.exe'
$checksum = 'a5f68d612323a671b23c5dacd5f78323e3213bd683db6bdc93e1b58a2e18c3eb'
$checksumType = 'sha256'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) 

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"