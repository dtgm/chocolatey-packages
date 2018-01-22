$packageName = 'copay'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/bitpay/copay/releases/download/v3.13.1/BitPay.exe'
$checksum = '8f81bcbbec43532e5f96434405952239fff1489097b2d3adda6e12d385a27858'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName $packageName `
                          -FileType $installerType `
                          -SilentArgs $silentArgs `
                          -Url $url `
                          -ValidExitCodes $validExitCodes `
                          -Checksum $checksum `
                          -ChecksumType $checksumType