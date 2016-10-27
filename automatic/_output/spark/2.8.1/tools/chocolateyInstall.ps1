$packageName = 'spark'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'http://download.igniterealtime.org/spark/spark_2_8_1.exe'
$checksum = ''
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"