$packageName = 'openra'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com//OpenRA/OpenRA/releases/download/release-20160508/OpenRA-release-20160508.exe'
$checksum = '555be4e3e868cf7139407f8f6f5c6ca1'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"