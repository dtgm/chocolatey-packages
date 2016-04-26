$packageName = 'armory'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitcoinarmory.com/downloads/bitcoinarmory-releases/armory_0.93.3_winAll.exe'
$checksum = 'fb913b2a89c5c84fe146e0485c41ee0d9423fa32'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"