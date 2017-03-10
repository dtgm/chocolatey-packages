$packageName = 'electrum.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.electrum.org/2.8.0/electrum-2.8.0-setup.exe'
$checksum = '1f60d285a06930d023612b55213fbc430a07b1b3425693512585904f68f1dcbf'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"