$packageName = 'gramps'
$installerType = 'exe'
$silentArgs = '/S'
$urlArray = @('http://sourceforge.net/projects/gramps/files/Stable/4.2.1/GrampsAIO-4.2.1-1_win32.exe/download', 'http://sourceforge.net/projects/gramps/files/Stable/4.2.1/GrampsAIO-4.2.1-2_win64.exe/download')
$url = $urlArray[0]
$checksum = ''
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = ''
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