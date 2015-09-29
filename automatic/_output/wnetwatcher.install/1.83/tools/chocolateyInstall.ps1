$packageName = 'wnetwatcher.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/wnetwatcher_setup.exe'
$checksum = 'f3ef8475f641d27f54e9cd1cb3d260bb2145fa63'
$checksumType = 'sha1'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"