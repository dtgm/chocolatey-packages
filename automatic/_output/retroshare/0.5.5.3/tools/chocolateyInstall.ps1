$packageName = 'retroshare'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/retroshare/files/RetroShare/0.5.5c/RetroShare_0.5.5c_7261_setup.exe/download'
$checksum = '2445ba698c759c638d717eb93f1739383c5bde46'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"