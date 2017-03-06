$packageName = 'mweather.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/mweather_setup.exe'
$checksum = '3cc827427439bbaab0a8b68fe126c7b387e224b35a86e7c78a41fc39112766af'
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