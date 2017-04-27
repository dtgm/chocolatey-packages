$packageName = 'zimbra-desktop'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://s3.amazonaws.com/files.zimbra.com/downloads/zdesktop/7.3.0/b13060/zdesktop_7_3_0_ga_b13060_20170410030639_win32.msi'
$checksum = '3e8194fa177265360a5ee841423b3faf'
$checksumType = 'sha256'
$url64 = 'https://s3.amazonaws.com/files.zimbra.com/downloads/zdesktop/7.3.0/b13060/zdesktop_7_3_0_ga_b13060_20170410030639_win64.msi'
$checksum64 = 'd5d7dfee9c5f6a7e77276d1b2535f573e45fb3131e1442540acbcdc6f974705f'
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

