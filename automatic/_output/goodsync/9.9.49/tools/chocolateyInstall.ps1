$packageName = 'goodsync'
$fileType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://www.goodsync.com/download/GoodSync-Setup.msi'
$checksum = 'a9adc345b0381beee698348dd4d72d1e0497c1ddbf755ec4fc73e59c43e86767'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$fileType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"