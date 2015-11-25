$packageName = 'goodsync'
$fileType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://www.goodsync.com/download/GoodSync-Setup.msi'
$checksum = '42d6ab6984ca260bd25c33d637d61d796d75c4cc'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$fileType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"