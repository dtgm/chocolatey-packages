$packageName = 'deluge'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.deluge-torrent.org/windows/deluge-1.3.11-win32-setup.exe'
$checksum = 'a7e2f12f0117474d703e69faee3e143c432f1f1e'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"