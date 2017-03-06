$packageName = 'winedt'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.winedt.com/download/winedt102-32.exe'
$checksum = '50a7db935170de2271ea421c2d8abdcce380720f44549f36706d10ebde8a2e30'
$checksumType = 'sha256'
$url64 = 'http://www.winedt.com/download/winedt102-64.exe'
$checksum64 = '282581613e5acf3382861778e00ea50f8d371ff433dde6f4b452e4b7a707cd0d'
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