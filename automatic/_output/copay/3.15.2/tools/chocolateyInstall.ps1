$packageName = 'copay'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/bitpay/copay/releases/download/v3.15.2/BitPay.exe'
$checksum = 'd7e5aaa81e08468039aa8531aa33de3b87a094f3aba36fec9d1cd6c7ebb8bd67'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName $packageName `
                          -FileType $installerType `
                          -SilentArgs $silentArgs `
                          -Url $url `
                          -ValidExitCodes $validExitCodes `
                          -Checksum $checksum `
                          -ChecksumType $checksumType