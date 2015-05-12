$packageName = 'lili.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.tuxfamily.org/lilicreator/stable/LinuxLive USB Creator 2.9.3.exe'
$checksum = 'eb668901a6980e157d294934d71566c35c91db5b'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
