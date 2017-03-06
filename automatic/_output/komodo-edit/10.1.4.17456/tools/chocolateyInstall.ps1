$packageName = 'komodo-edit'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://downloads.activestate.com/Komodo/releases/10.1.4/Komodo-Edit-10.1.4-17456.msi'
$checksum = '30e7ef05d79f762d856bacb366e60ef7'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"