$packageName = 'winedt'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.winedt.com/download/winedt101-32.exe'
$checksum = '1eef8eb368f47c43816855cbb6c0f998beeffaab'
$checksumType = 'sha1'
$url64 = 'http://www.winedt.com/download/winedt101-64.exe'
$checksum64 = '994edb1b6a75ea0ad6367534b6646ea28a665662'
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