$packageName = 'armory'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://s3.amazonaws.com/bitcoinarmory-releases/armory_0.93.1_winAll.exe'
$checksum = '95da85f5d018159f4ba6a34251afcf06a877a4b6'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"