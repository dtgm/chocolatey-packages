$packageName = 'retroshare'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/retroshare/files/RetroShare/0.6.0-rc2/RetroShare_0.6.0_8551_rc2_setup.exe/download'
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