$packageName = 'graphicsmagick'
$urlArray = @('https://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/1.3.24/GraphicsMagick-1.3.24-Q8-win32-dll.exe', 'https://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/1.3.24/GraphicsMagick-1.3.24-Q8-win64-dll.exe')
$url = $urlArray[0]
$checksum = '5876630803eb12a2e096b57bcdb9df9f75b517625e338bc47c54475e7acadc3b'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '3db24fa120372e71fff30e8b6c5d3734aded0df4fb704b615ae1117b7a61c32f'
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