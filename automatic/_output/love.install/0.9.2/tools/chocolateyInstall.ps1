$packageName = 'love.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitbucket.org/rude/love/downloads/love-0.9.2-win32.exe'
$checksum = '6c9081ef5ac370a5cfc44b938d7c215a'
$checksumType = 'md5'
$url64 = 'https://bitbucket.org/rude/love/downloads/love-0.9.2-win64.exe'
$checksum64 = 'c958aaadcb8ce25d902ae9f9b1621206'
$checksumType64 = 'md5'
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