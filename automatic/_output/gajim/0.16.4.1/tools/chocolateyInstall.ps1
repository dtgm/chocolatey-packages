$packageName = 'gajim'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://gajim.org/downloads/0.16/gajim-0.16.4-1.exe'
$checksum = 'c233da1d87aaa17683acf5fe7e61a4c0799155ee'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"