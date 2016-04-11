$packageName = 'goodsync'
$fileType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://www.goodsync.com/download/GoodSync-Setup.msi'
$checksum = '5d326670a5c9a328e6ea5f6a594ea27505aec2bb'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$fileType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"