$packageName = 'jstock'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/yccheok/jstock/releases/download/release_1-0-7-20/jstock-1.0.7.20-setup.exe'
$checksum = 'afc2544c47ac691ced1b1ffdd7e3f984'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"