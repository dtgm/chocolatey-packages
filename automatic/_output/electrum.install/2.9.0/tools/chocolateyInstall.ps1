$packageName = 'electrum.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.electrum.org/2.9.0/electrum-2.9.0-setup.exe'
$checksum = 'd584118028972d64a39674c76789819fb884da1a017642d9e305351f2793d4bd'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"