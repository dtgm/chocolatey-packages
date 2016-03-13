$packageName = 'cryptsync'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$urlArray = @('https://sourceforge.net/projects/cryptsync-sk/files/1.2.3/CryptSync-1.2.3.msi/download', 'https://sourceforge.net/projects/cryptsync-sk/files/1.2.3/CryptSync64-1.2.3.msi/download')
$url = $urlArray[0]
$checksum = '529e1c3246e61edc940cf67423a962617a561a6d'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '10234b6f63d3b01a4b8b74c115d767e9449cd336'
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