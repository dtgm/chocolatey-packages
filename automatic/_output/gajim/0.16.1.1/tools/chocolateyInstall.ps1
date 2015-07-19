$packageName = 'gajim'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://gajim.org/downloads/0.16/gajim-0.16.1-1.exe'
$checksum = '7ab841c7f35fd2b6396af44b058b9fba66545648'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"