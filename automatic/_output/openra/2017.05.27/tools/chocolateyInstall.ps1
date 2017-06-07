$packageName = 'openra'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com//OpenRA/OpenRA/releases/download/release-20170527/OpenRA-release-20170527.exe'
$checksum = 'cb45fdfb9cb5e3e7760f929df6c0811d'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"