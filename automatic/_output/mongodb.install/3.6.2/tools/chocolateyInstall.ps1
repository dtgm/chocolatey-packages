$packageName = 'mongodb.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.2-signed.msi'
$checksum = 'b1450b0b716214986ce92a981ce4878edabd4a2032712453f9034b63933607ca'
$checksumType = 'sha256'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"