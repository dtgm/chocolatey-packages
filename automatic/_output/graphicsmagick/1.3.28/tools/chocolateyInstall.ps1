$packageName = 'graphicsmagick'
$urlArray = @('https://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/1.3.28/GraphicsMagick-1.3.28-Q8-win32-dll.exe', 'https://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/1.3.28/GraphicsMagick-1.3.28-Q8-win64-dll.exe')
$url = $urlArray[0]
$checksum = 'd26dc5cb9a9bb6c07919877cc40b284729ddcdba63972b933cc04666ced5415d'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '2269ccac302e5c0b12af9ca8e393ba287d324744c07468f6781948c1b86d41b5'
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