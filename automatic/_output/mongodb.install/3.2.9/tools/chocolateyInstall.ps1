$packageName = 'mongodb.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://downloads.mongodb.org/win32/mongodb-win32-i386-3.2.9-signed.msi'
$checksum = 'c95c568d41ff2659638f05ea4be9793820f19a31ea52119b3157671b317f036d'
$checksumType = 'sha256'
$url64 = 'http://downloads.mongodb.org/win32/mongodb-win32-x86_64-3.2.9-signed.msi'
$checksum64 = '79175a770efe09a7e1cb154235b899da14eaaa399e25009d7ec2252b58953df4'
$checksumType64 = 'sha256'
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