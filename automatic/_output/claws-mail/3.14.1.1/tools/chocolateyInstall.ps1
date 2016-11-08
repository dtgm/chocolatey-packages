$packageName = 'claws-mail'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.claws-mail.org/win32/claws-mail-3.14.1-1.exe'
$checksum = '93e8986a86549cde3a8b5d4f171caf3901b01d196674fc07dca46651c0b122b6'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"