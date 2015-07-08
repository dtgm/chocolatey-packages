$packageName = 'claws-mail'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.claws-mail.org/win32/claws-mail-3.10.1-pkg56.exe'
$checksum = 'db7e853bc7ea8ee4a07724d1dc16572e55470ab3'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"