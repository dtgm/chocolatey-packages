$packageName = 'gamedownloader.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://vorboss.dl.sourceforge.net/project/dev-fire-gd/Game Downloader 4.0/Game Downloader 4.0 Setup.exe'
$checksum = '9b0bdf2df27e2c92978cc80b36a1eb26a655f7de'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"