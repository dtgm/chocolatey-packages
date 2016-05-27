$packageName = 'spark'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'http://download.igniterealtime.org/spark/spark_2_7_7.exe'
$checksum = '45c628e544171469968216a7558b6165'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"