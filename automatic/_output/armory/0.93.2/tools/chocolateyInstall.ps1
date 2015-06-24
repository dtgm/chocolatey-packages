$packageName = 'armory'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://s3.amazonaws.com/bitcoinarmory-releases/armory_0.93.2_winAll.exe'
$checksum = 'd4cd167c993d616c6fb490d52bbd66f5edcb20b8'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"