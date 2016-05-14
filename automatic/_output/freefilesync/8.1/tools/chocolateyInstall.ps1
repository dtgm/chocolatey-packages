$packageName = 'freefilesync'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://www.freefilesync.org/download/w2wvxxvauqfik7d/FreeFileSync_8.1_Windows_Setup.exe'
$checksum = '842ab246477e7fcdb69aeef00f6ee732095e8e49'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"