$packageName = 'yacy'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://yacy.net/release/yacy_v1.90_20160704_9000.exe'
$checksum = '33531b65a05d9472a9b38fdc25e1d331699e7114d60e058a0e4505458d275e70'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"