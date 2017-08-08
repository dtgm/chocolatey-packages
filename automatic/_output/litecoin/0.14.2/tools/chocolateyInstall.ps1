$packageName = 'litecoin'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.litecoin.org/litecoin-0.14.2/win/litecoin-0.14.2-win32-setup.exe'
$checksum = '8c2c8a257987d63bb217fd8b6c0dbdf46983f8cf49263c903dabf66a63f29af4'
$checksumType = 'sha256'
$url64 = 'https://download.litecoin.org/litecoin-0.14.2/win/litecoin-0.14.2-win64-setup.exe'
$checksum64 = '4c0dc0bbaee722b038a82120cc229377eb83b06b480947cf7508adc433d5a49e'
$checksumType64 = 'sha256'
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