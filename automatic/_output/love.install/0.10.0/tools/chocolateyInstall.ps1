$packageName = 'love.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitbucket.org/rude/love/downloads/love-0.10.0-win32.exe'
$checksum = '43cdbae516513c269c96529723f75fd3'
$checksumType = 'md5'
$url64 = 'https://bitbucket.org/rude/love/downloads/love-0.10.0-win64.exe'
$checksum64 = 'f05d1238311ef7f85bc70bafa41819ac'
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