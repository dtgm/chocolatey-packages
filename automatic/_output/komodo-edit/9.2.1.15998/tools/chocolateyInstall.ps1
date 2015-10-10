$packageName = 'komodo-edit'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://downloads.activestate.com/Komodo/releases/9.2.1/Komodo-Edit-9.2.1-15998.msi'
$checksum = 'c0d4855e789a476ef72d69c1596c9773'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"