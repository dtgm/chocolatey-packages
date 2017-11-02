$packageName = 'electrum.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.electrum.org/3.0/electrum-3.0.0-setup.exe'
$checksum = 'f14a1e575a7d1dff22a33ef865ecf9f27b8fc8abd8dc648bfc7461bb1948ceb5'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"