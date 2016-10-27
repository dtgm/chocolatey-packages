$packageName = 'gajim'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://gajim.org/downloads/0.16/gajim-0.16.6-1.exe'
$checksum = '5bfce26d19ec2499b28919f0aaf040044e82bacbcb84f63100e04025ddb9bd80'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"