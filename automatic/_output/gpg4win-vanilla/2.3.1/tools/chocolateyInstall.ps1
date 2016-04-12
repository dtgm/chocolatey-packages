$packageName = 'gpg4win-vanilla'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://files.gpg4win.org/gpg4win-vanilla-2.3.1.exe'
$checksum = 'c4616947df382fa4d4dac53bd1a3bc53ed40227d'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"