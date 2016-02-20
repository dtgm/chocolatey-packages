$packageName = 'zimbra-desktop'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://files.zimbra.com/downloads/zdesktop/7.2.7/b12059/zdesktop_7_2_7_ga_b12059_20150629060421_win32.msi'
$checksum = 'd5f6fd1282b884cb15f937e006f7640996db214a'
$checksumType = 'sha1'
$url64 = 'https://files.zimbra.com/downloads/zdesktop/7.2.7/b12059/zdesktop_7_2_7_ga_b12059_20150629060421_win64.msi'
$checksum64 = '21739ad409c28adf97af5584163eb47a0057e566'
$checksumType64 = 'sha1'
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