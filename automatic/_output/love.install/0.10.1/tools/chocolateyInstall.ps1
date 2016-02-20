$packageName = 'love.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitbucket.org/rude/love/downloads/love-0.10.1-win32.exe'
$checksum = 'b7115910839661681fc6acb8436385a6'
$checksumType = 'md5'
$url64 = 'https://bitbucket.org/rude/love/downloads/love-0.10.1-win64.exe'
$checksum64 = '0a871f2efb017a01948a6a056afc0160'
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