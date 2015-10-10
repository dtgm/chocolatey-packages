$packageName = 'twisted'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://twistedmatrix.com/Releases/Twisted/15.4/Twisted-15.4.0.win32-py2.7.msi'
$checksum = '47c2d6680f8bcd5b11d1305a875ecfcb'
$checksumType = 'md5'
$url64 = 'http://twistedmatrix.com/Releases/Twisted/15.4/Twisted-15.4.0.win-amd64-py2.7.msi'
$checksum64 = 'eb1e87e85fd73b8e2e8953e45d8e654c'
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