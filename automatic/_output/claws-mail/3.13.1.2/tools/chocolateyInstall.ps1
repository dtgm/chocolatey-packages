$packageName = 'claws-mail'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.claws-mail.org/win32/claws-mail-3.13.1-2.exe'
$checksum = '9e01c6597e861a48e2f8a10fbfa56f1e80c1da3b'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"