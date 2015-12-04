$packageName = 'stunnel'
$url = 'https://www.stunnel.org/downloads/archive/5.x/stunnel-5.27-installer.exe'
$checksum = 'aeb2a63ee815d93effa0500c6ab4f35abd61a8c2'
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