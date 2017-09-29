$packageName = 'storjshare'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/Storj/storjshare-gui/releases/download/v7.1.0/storjshare-gui.win32.exe'
$checksum = '62419cc393dbb8cc5465db36babe72c56bf88e241823f1e59d82d1b3d0f593a4'
$checksumType = 'sha256'
$url64 = 'https://github.com/Storj/storjshare-gui/releases/download/v7.1.0/storjshare-gui.win64.exe'
$checksum64 = '3690262c6d985e744a0bf58bf8c558e3b827d2835e953af5655b04203ef6d75b'
$checksumType64 = 'sha256'
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