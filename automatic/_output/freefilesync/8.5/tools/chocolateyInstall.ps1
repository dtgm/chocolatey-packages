$packageName = 'freefilesync'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://www.freefilesync.org/download/FreeFileSync_8.5_Windows_Setup.exe'
$checksum = 'ba909f7db342bfef919c2ebe44be1fceed4943a66d600142f199adf1c746ce53'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"