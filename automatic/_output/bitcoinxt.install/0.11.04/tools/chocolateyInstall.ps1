$packageName = 'bitcoinxt.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/bitcoinxt/bitcoinxt/releases/download/v0.11D/Bitcoin.XT.32.bit.exe'
$checksum = '135cf6ea9eaa16b57c6d4c52db683b4d2d8f1795'
$checksumType = 'sha1'
$url64 = 'https://github.com/bitcoinxt/bitcoinxt/releases/download/v0.11D/Bitcoin.XT.64.bit.exe'
$checksum64 = '69278aee356e04561fef17ae7502d03fc0bbbb61'
$checksumType64 = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"