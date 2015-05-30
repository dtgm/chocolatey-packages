$packageName = 'trillian'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://cerulean.cachenetworks.com/trillian-v5.6.0.5.msi'
$checksum = '83ab3a5311e6942625f3edaa2c86eeeb22ec20cc'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"