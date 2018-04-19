$packageName = 'electrum.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.electrum.org/3.1.3/electrum-3.1.3-setup.exe'
$checksum = '0a2989d8b24e7113c9e1993d0b04188e768e2f120023dad40bbc2a7253f13073'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"