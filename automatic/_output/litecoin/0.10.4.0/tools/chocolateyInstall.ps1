$packageName = 'litecoin'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.litecoin.org/litecoin-0.10.4.0/win/litecoin-0.10.4.0-win32-setup.exe'
$checksum = 'e6cda3914f8a7d501b90e6cfe8c0d04ddc4fb8be'
$checksumType = 'sha1'
$url64 = 'https://download.litecoin.org/litecoin-0.10.4.0/win/litecoin-0.10.4.0-win64-setup.exe'
$checksum64 = 'aac49759e525375d91b4d32b38772aa66b86a730'
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