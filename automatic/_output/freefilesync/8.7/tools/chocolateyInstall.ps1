$packageName = 'freefilesync'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://www.freefilesync.org/download/FreeFileSync_8.7_Windows_Setup.exe'
$checksum = '3a997d337e66ec4bd12e1bb87ffbb4adc5a8d1837a8d9f05c61645892d634e93'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"