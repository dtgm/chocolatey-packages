$packageName = 'lmms'
$packageVersion = '1.2.0-rc5'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'https://github.com/LMMS/lmms/releases/download/v1.2.0-rc5/lmms-1.2.0-rc5-win32.exe'
$checksum = '3b2f8e1e1fa051b83619de4f94d2fa364174ce328bf1cce7fcb23136ec6ce07f'
$checksumType = 'sha256'
$url64 = 'https://github.com/LMMS/lmms/releases/download/v1.2.0-rc5/lmms-1.2.0-rc5-win64.exe'
$checksum64 = '529f8bdf9cf6fbc179885b81ad63ae1cbad687448d56fc2c75c26ccdcb886ff6'
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
