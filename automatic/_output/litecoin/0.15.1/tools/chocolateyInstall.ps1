$packageName = 'litecoin'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.litecoin.org/litecoin-0.15.1/win/litecoin-0.15.1-win32-setup.exe'
$checksum = '97fd13845045475a62e5707ded25d5be75ea1c4d89080418dcba7a670ee46dad'
$checksumType = 'sha256'
$url64 = 'https://download.litecoin.org/litecoin-0.15.1/win/litecoin-0.15.1-win64-setup.exe'
$checksum64 = '71d430481e5064ad56e793b81f1d5e5f9f811107794a95c6ad751a3bee9d6e99'
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