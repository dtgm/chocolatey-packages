$packageName = 'mongodb.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.7-signed.msi'
$checksum = 'baf43fcf28ff8c486d6af9036c0f15e96c0663a222626aed97d1e48c143ab865'
$checksumType = 'sha256'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"