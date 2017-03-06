$packageName = 'sketchupviewer'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://dl.trimble.com/sketchup/SketchUpViewer-en.msi'
$checksum = '47b9a281e6335cfe1963084dea7ca881703e28be04361944b2d92fdc3e2c1be6'
$checksumType = 'sha256'
$url64 = 'http://dl.trimble.com/sketchup/SketchUpViewer-en-x64.msi'
$checksum64 = '38d8d6c92bd183ee401c4f93fd9826c7606b90cddb85dcc2361369b4c614b7cf'
$checksumType64 = 'sha256'
$validExitCodes = @(0,3010)

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