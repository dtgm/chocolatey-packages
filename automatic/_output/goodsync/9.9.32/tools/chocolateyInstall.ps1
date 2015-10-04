$packageName = 'goodsync'
$fileType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://www.goodsync.com/download/GoodSync-Setup.msi'
$checksum = '5f8ca155d4a932d7e42057e409b91c99e912495a'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$fileType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"