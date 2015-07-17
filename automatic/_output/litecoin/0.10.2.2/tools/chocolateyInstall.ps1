$packageName = 'litecoin'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.litecoin.org/litecoin-0.10.2.2/win/litecoin-0.10.2.2-win32-setup.exe'
$checksum = '78886fe0e71ecd4f10500b6191a67cde8938e801'
$checksumType = 'sha1'
$url64 = 'https://download.litecoin.org/litecoin-0.10.2.2/win/litecoin-0.10.2.2-win64-setup.exe'
$checksum64 = '647a798470956603a0c6cc1fdc4c2062dc601342'
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