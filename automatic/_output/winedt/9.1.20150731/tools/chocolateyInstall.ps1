$packageName = 'winedt'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.winedt.com/download/winedt91-32.exe'
$checksum = '272685aa8fc271fb73e76c104a08ed909c46d90b'
$checksumType = 'sha1'
$url64 = 'http://www.winedt.com/download/winedt91-64.exe'
$checksum64 = '2fdf097cc69f696ca83d0fb5cda48ee8ba516542'
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