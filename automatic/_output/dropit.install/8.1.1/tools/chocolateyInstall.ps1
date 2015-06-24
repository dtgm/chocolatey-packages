$packageName = 'dropit.install'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://sourceforge.net/projects/dropit/files/DropIt/v8.1.1/DropIt_v8.1.1_Setup.exe/download'
$checksum = 'd00dbae074dc6dfc02e4764f4032d2c9b2bfcc2c'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"