$packageName = 'mongodb.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://downloads.mongodb.org/win32/mongodb-win32-i386-3.2.7-signed.msi'
$checksum = 'a84cc09f04fe9b89cd276f30fb1a9d0855d9bf8cba9db38875afe8a876f615be'
$checksumType = 'sha256'
$url64 = 'http://downloads.mongodb.org/win32/mongodb-win32-x86_64-3.2.7-signed.msi'
$checksum64 = 'f1ea6503ae5ca04fa5ddaa8d2f10c375f887eb58491e81b8cb1a9d2dd5b59c51'
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