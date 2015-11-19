$packageName = 'komodo-edit'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://downloads.activestate.com/Komodo/releases/9.3.1/Komodo-Edit-9.3.1-16424.msi'
$checksum = '5d86161aa6f51e51a15b1089ed3cf794'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"