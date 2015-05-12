$packageName = 'crystaldiskmark'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://iij.dl.sourceforge.jp/crystaldiskmark/63188/CrystalDiskMark4_0_0-en.exe'
$checksum = 'cb38fbe4d6801258dffa84e80a583344'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"