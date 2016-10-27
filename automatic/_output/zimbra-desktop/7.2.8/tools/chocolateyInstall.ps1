$packageName = 'zimbra-desktop'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://files.zimbra.com/downloads/zdesktop/7.2.8/b12102/zdesktop_7_2_8_ga_b12102_20161005030712_win32.msi'
$checksum = '15026ab90cb62a31bce57ecf3d015438'
$checksumType = 'sha256'
$url64 = 'https://files.zimbra.com/downloads/zdesktop/7.2.8/b12102/zdesktop_7_2_8_ga_b12102_20161005030712_win64.msi'
$checksum64 = '1202ab6a974658b1be7a501ae7ad1d048265f02f7318ae59b96766f0cb5f7497'
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

