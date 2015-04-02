$packageName = 'winedt'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.winedt.com/download/winedt90-32.exe'
$checksum = 'edb275eb02524c4c994cbce52d5f6e2bf68886ee'
$checksumType = 'sha1'
$url64 = 'http://www.winedt.com/download/winedt90-64.exe'
$checksum64 = '1dad43bf4cccc4724f672feb84b1a0939229cc11'
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