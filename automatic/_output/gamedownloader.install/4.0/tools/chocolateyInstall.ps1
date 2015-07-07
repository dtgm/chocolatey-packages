$packageName = 'gamedownloader.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://tcpdiag.dl.sourceforge.net/project/dev-fire-gd/Game Downloader 4.0/Game Downloader 4.0 Setup.exe'
$checksum = '{checksum}'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"