$packageName = 'claws-mail'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.claws-mail.org/win32/claws-mail-3.13.0-2.exe'
$checksum = '457c3f3cb4819288ab3607a0d5dcabaf830f45ab'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"