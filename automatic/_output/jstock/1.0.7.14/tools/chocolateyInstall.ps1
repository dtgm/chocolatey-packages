$packageName = 'jstock'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/yccheok/jstock/releases/download/release_1-0-7-14/jstock-1.0.7.14-setup.exe'
$checksum = '4721bdbf5cc48884b9a04ce828be0c07'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"