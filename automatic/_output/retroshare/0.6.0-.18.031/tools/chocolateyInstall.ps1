$packageName = 'retroshare'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/retroshare/files/RetroShare/0.6.0-rc1/RetroShare_0.6.0_8401_rc1_setup.exe/download'
$checksum = '787e92d9d2c9cc10c00cd205c62c664e5e8e7c09'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"