$packageName = 'hmne'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/hmne/files/HM%20NIS%20Edit/2.0.3/nisedit2.0.3.exe/download'
$checksum = 'c5845c4e367dd106934b1ff540ab4301d96e1b32'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"