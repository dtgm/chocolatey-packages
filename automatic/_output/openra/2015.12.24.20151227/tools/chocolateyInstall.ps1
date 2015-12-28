$packageName = 'openra'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com//OpenRA/OpenRA/releases/download/release-20151224/OpenRA-release-20151224.exe'
$checksum = '1239d48aa7889555aa65d1d1d5860d61'
$checksumType = 'md5'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"