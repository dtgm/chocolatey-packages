$packageName = 'icecast'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://downloads.xiph.org/releases/icecast/icecast_win32_2.4.3.exe'
$checksum = '48482892353f42d50b04b8105bf595ae1d85e40e'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"