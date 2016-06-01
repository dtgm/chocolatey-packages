$packageName = 'graphicsmagick'
$version = '1.3.20'
$installerType = 'EXE'
$silentArgs = '/SP /VERYSILENT'
$32BitUrl = "http://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/$version/GraphicsMagick-$version-Q8-win32-dll.exe/download"
$64BitUrl = "http://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/$version/GraphicsMagick-$version-Q8-win64-dll.exe/download"

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$32BitUrl" "$64BitUrl"
