$packageName = 'gramps'
$installerType = 'exe'
$silentArgs = '/S'
$urlArray = @('https://sourceforge.net/projects/gramps/files/Stable/4.2.2/GrampsAIO-4.2.2-1_win32.exe', 'https://sourceforge.net/projects/gramps/files/Stable/4.2.2/GrampsAIO-4.2.2-1_win64.exe')
$url = $urlArray[0]
$checksum = 'b9f253bcbd3730231f9d34c24d3783cb9ddbd42a'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '219d7a481c2bbdb3612c2f6b7461a08794fd020d'
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