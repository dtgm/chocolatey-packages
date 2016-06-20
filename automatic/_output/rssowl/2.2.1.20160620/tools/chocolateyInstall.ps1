$packageName = 'rssowl'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/rssowl/RSSOwl/releases/download/2.2.1/RSSOwl.2.2.1.Setup.exe'
$checksum = 'd314ccbab9376d52b160e7da7c1cb77740f22994dedfc4e72bfb02e2c5da1554'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"