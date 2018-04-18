$packageName = 'electrum.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.electrum.org/3.1.3/electrum-3.1.3-setup.exe'
$checksum = '{checksum}'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"