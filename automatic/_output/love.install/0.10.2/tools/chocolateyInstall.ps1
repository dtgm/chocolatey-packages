$packageName = 'love.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitbucket.org/rude/love/downloads/love-0.10.2-win32.exe'
$checksum = 'f09f5575dba5ec4ea5aac420aef0f52b'
$checksumType = 'md5'
$url64 = 'https://bitbucket.org/rude/love/downloads/love-0.10.2-win64.exe'
$checksum64 = 'd374c5c6665d9d63730336f5ffb8ad13'
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