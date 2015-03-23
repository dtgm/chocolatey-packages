$packageName = 'hddguardian'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://hddguardian.codeplex.com/downloads/get/1437867'
$checksum = 'ec2e3c5a7cf034c9c15fe6f7129289c714857cb7'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"