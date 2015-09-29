$packageName = 'twisted'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://twistedmatrix.com/Releases/Twisted/15.3/Twisted-15.3.0.win32-py2.7.msi'
$checksum = '0fd1563e8c7fefd3291424551e49dadd'
$checksumType = 'md5'
$url64 = 'http://twistedmatrix.com/Releases/Twisted/15.3/Twisted-15.3.0.win-amd64-py2.7.msi'
$checksum64 = 'da0f2d186954b3b171ed062a4a77bdb4'
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