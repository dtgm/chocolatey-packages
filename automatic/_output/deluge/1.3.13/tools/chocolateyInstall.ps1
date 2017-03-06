$packageName = 'deluge'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.deluge-torrent.org/windows/deluge-1.3.13-win32-py2.7-0.exe'
$checksum = '980a7a2bdeb9bca0573544f2ab688ff7b4da5ed18414d319855526dc78ec6ce7'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"