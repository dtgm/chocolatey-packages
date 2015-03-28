$packageName = 'crystaldiskmark'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://jaist.dl.sourceforge.jp/crystaldiskmark/46482/CrystalDiskMark3_0_3b-en.exe'
$checksum = 'cd4abab9bcdd3eb78917d50bc51c7134'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"