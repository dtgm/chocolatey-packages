$packageName = 'deluge'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.deluge-torrent.org/windows/deluge-1.3.14-win32-py2.7.exe'
$checksum = 'e2dc77347449c187f6d96ccb56bc849acd1b14badb89923438a5116f46bd227b'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"