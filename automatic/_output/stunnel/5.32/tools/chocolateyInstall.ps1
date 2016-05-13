$packageName = 'stunnel'
$url = 'https://www.stunnel.org/downloads/archive/5.x/stunnel-5.32-installer.exe'
$checksum = '9f3e943379e9ad204a42a6fbfbd558023f1a79c0'
$checksumType = 'sha1'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"