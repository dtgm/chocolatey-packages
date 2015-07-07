$packageName = 'twisted'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://twistedmatrix.com/Releases/Twisted/15.2/Twisted-15.2.1.win32-py2.7.msi'
$checksum = '54157114060e518d9f1e8be792100fda'
$checksumType = 'md5'
$url64 = 'http://twistedmatrix.com/Releases/Twisted/15.2/Twisted-15.2.1.win-amd64-py2.7.msi'
$checksum64 = '1aff71fa35b0b91a0371c86eae84247f'
$checksumType64 = 'md5'
$validExitCodes = @(0,3010)
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