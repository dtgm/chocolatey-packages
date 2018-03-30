$packageName = 'claws-mail'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.claws-mail.org/win32/claws-mail-3.16.0-2-32bit.exe'
$checksum = 'b383bb0103580a048d273f8de1419aede5a39b3ff0f43c573a6606368ef7636c'
$checksumType = 'sha256'
$url64 = 'http://www.claws-mail.org/win32/claws-mail-3.16.0-2-64bit.exe'
$checksum64 = 'd05db2a23f1f739a28df532edb82b4e14221403071b3d95ae513904c6436e7d2'
$checksumType64 = 'sha256'
$validExitCodes = @(0)

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