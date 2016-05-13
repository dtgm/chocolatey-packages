$packageName = 'wnetwatcher.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/wnetwatcher_setup.exe'
$checksum = 'ba5c95f5b2109494e0383fb0c9f8de033866f845'
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