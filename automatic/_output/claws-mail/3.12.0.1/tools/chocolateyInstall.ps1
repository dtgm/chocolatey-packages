$packageName = 'claws-mail'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.claws-mail.org/win32/claws-mail-3.12.0-1.exe'
$checksum = 'eb9ba8dedaacf8e5d35e7bc8be5001ad5a533654'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"