$packageName = 'mweather.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/mweather_setup.exe'
$checksum = '19e22661ca35c9aacce301af6af6721d74adebfdf69bfaa719a9e76dbb256a3a'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"