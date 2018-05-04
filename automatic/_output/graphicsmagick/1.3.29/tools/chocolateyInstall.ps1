$packageName = 'graphicsmagick'
$urlArray = @('https://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/1.3.29/GraphicsMagick-1.3.29-Q8-win32-dll.exe', 'https://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/1.3.29/GraphicsMagick-1.3.29-Q8-win64-dll.exe')
$url = $urlArray[0]
$checksum = '{checksum}'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha256'
$installerType = 'EXE'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
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