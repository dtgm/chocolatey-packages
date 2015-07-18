$packageName = 'zimbra-desktop'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://files.zimbra.com/downloads/zdesktop/7.2.7/b12059/zdesktop_7_2_7_ga_b12059_20150629060421_win64.msi'
$checksum = 'af77874dcf01f1102fb1b70974c66cd4'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"