$packageName = 'jstock'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com//yccheok/jstock/releases/download/release_1-0-7-11/jstock-1.0.7.11-setup.exe'
$checksum = '523370ec2edc2e930947e208ab38b548'
$checksumType = 'md5'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"