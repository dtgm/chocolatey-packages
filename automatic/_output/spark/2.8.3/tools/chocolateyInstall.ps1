$packageName = 'spark'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'http://download.igniterealtime.org/spark/spark_2_8_3.exe'
$checksum = 'c988c789311dcb53d13d1c9713f34dd4'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
