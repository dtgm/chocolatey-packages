$packageName = 'gramps'
$installerType = 'exe'
$silentArgs = '/S'
$urlArray = @('https://sourceforge.net/projects/gramps/files/Stable/4.2.2/GrampsAIO-4.2.2-1_win32.exe', 'https://sourceforge.net/projects/gramps/files/Stable/4.2.2/GrampsAIO-4.2.2-1_win64.exe')
$url = $urlArray[0]
$checksum = 'd085f174dcc76e5327382b730eb8b1f5a41c3d16'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '9e6effd4b702350955c2ecc936b0f107833d8600'
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