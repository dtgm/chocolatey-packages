$packageName = 'graphicsmagick'
$urlArray = @('https://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/1.3.26/GraphicsMagick-1.3.26-Q8-win32-dll.exe', 'https://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/1.3.26/GraphicsMagick-1.3.26-Q8-win64-dll.exe')
$url = $urlArray[0]
$checksum = 'd463ecc9528b9f4cb86183a648b2386e9f1559df49d9fa833c8b99aff8865c7d'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = 'd45ce887c1b69d8645853729f158680c19ca0feb8d5ec62d4e32d5893d419e23'
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