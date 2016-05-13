$packageName = 'winedt'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.winedt.com/download/winedt100-32.exe'
$checksum = 'a319b48a7ab5082ef6f6a5745499d59fd9b16c7a'
$checksumType = 'sha1'
$url64 = 'http://www.winedt.com/download/winedt91-64.exe'
$checksum64 = '1b62a16827b744cabf8c2cce5444703974d29418'
$checksumType64 = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"