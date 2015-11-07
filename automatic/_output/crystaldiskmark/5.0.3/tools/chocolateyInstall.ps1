$packageName = 'crystaldiskmark'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://jaist.dl.sourceforge.jp/crystaldiskmark/63617/CrystalDiskMark5_0_3-en.exe'
$checksum = 'aef169fece49336e9bc95e5d6013dbee'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"