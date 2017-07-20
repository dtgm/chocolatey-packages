$packageName = 'copay'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/bitpay/copay/releases/download/v3.7.0/BitPay.exe'
$checksum = '6935bb7d467855f8eaf0c10035ef8925ff581c81cd7f2ba41b212a62305ca799'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName $packageName `
                          -FileType $installerType `
                          -SilentArgs $silentArgs `
                          -Url $url `
                          -ValidExitCodes $validExitCodes `
                          -Checksum $checksum `
                          -ChecksumType $checksumType