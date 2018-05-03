$packageName = 'goodsync'
$fileType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://www.goodsync.com/download/GoodSync-Setup.msi'
$checksum = '{checksum}'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$fileType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"