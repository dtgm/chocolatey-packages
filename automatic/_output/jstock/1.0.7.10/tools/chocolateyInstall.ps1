$packageName = 'jstock'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com//yccheok/jstock/releases/download/release_1-0-7-10/jstock-1.0.7.10-setup.exe'
$checksum = '6a3d35263d1fe4d39106fa5cb8725e05'
$checksumType = 'md5'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"