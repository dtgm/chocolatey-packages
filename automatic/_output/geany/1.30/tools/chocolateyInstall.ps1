$packageName = 'geany'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.geany.org/geany-1.30_setup.exe'
$checksum = '5dcae3ddf4bd0022d379cf8adc09c5b11588408cc81cb6dba1d4dd359eddeb94'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"