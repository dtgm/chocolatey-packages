$packageName = 'deluge'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.deluge-torrent.org/windows/deluge-1.3.15-win32-py2.7.exe'
$checksum = '{checksum}'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"