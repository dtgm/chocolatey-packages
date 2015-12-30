$packageName = 'gajim'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://gajim.org/downloads/0.16/gajim-0.16.5-1.exe'
$checksum = '656dcfb112afb7227aa925b23e0ef2d780bd2837'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"