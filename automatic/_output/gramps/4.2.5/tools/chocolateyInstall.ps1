$packageName = 'gramps'
$installerType = 'exe'
$silentArgs = '/S'
$urlArray = @('https://sourceforge.net/projects/gramps/files/Stable/4.2.5/GrampsAIO-4.2.5-1_win32.exe', 'https://sourceforge.net/projects/gramps/files/Stable/4.2.5/GrampsAIO-4.2.5-1_win64.exe')
$url = $urlArray[0]
$checksum = '{checksum}'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '{checksumx64}'
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