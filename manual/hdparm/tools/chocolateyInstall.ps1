$packageName = 'hdparm'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://sites.google.com/site/disablehddapm/home/hdparm_setup_package.msi'
$checksum = '0000553ccb9b56c4c4492b819bbbb06a97a13e18'
$checksumType = 'sha1'
$url64 = 'https://sites.google.com/site/disablehddapm/hdparm_setup_package_64b.msi'
$checksum64 = '0fbe5a71b4609493cda744aef4077f88f1078831'
$checksumType64 = 'sha1'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"