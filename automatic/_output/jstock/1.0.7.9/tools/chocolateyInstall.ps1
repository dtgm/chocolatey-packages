$packageName = 'jstock'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com//yccheok/jstock/releases/download/release_1-0-7-9/jstock-1.0.7.9-setup.exe'
$checksum = '56358b60d1e65757b595a7fd2e8a7aea'
$checksumType = 'md5'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"