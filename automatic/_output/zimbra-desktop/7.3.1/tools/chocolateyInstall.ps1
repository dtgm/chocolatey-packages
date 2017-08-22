$packageName = 'zimbra-desktop'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://s3.amazonaws.com/files.zimbra.com/downloads/zdesktop/7.3.1/b13063/zdesktop_7_3_1_ga_b13063_20170628044139_win32.msi'
$checksum = '09c4d465a6b90032d649e18646a2484f'
$checksumType = 'sha256'
$url64 = 'https://s3.amazonaws.com/files.zimbra.com/downloads/zdesktop/7.3.1/b13063/zdesktop_7_3_1_ga_b13063_20170628044139_win64.msi'
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha256'
$validExitCodes = @(0)

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

