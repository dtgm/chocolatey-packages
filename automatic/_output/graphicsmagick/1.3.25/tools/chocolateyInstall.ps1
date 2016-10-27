$packageName = 'graphicsmagick'
$urlArray = @('https://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/1.3.25/GraphicsMagick-1.3.25-Q8-win32-dll.exe', 'https://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/1.3.25/GraphicsMagick-1.3.25-Q8-win64-dll.exe')
$url = $urlArray[0]
$checksum = '1c1c71efe20181e100d93668a9d1d0c8fc6b9e4d325a73ef826094b70d9324e2'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '168a072e504f75e60fcdaf78b2a759bbc6720d4eaccbdf407ba4a9bdd4045ee8'
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