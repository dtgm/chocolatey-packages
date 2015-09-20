$packageName = 'spark'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'http://download.igniterealtime.org/spark/spark_2_7_2.exe'
$checksum = '1165842ccb495d55a56f0e25d9f9c549'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"