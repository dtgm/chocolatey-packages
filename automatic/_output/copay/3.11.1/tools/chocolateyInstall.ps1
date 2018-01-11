$packageName = 'copay'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/bitpay/copay/releases/download/v3.11.1/BitPay.exe'
$checksum = 'dbb39aac566c2abf8ca17d2357a6ca6693eb2fe581bae62755b8d75fb9ade6f8'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName $packageName `
                          -FileType $installerType `
                          -SilentArgs $silentArgs `
                          -Url $url `
                          -ValidExitCodes $validExitCodes `
                          -Checksum $checksum `
                          -ChecksumType $checksumType