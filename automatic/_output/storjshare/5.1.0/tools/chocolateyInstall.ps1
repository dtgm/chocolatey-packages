$packageName = 'storjshare'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/Storj/storjshare-gui/releases/download/v5.1.0/storjshare-gui.win32.exe'
$checksum = 'c412353556656a4bdb03a753d745e545414a43c4e59ccf57b80c38eceae89e44'
$checksumType = 'sha256'
$url64 = 'https://github.com/Storj/storjshare-gui/releases/download/v5.1.0/storjshare-gui.win64.exe'
$checksum64 = 'b7d6a4d0de7209279baa471f735856ddc900bc0c17c2f7dce2ea57e4b5435371'
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