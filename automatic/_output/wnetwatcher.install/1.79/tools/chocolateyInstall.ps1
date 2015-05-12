$packageName = 'wnetwatcher.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/wnetwatcher_setup.exe'
$checksum = 'f65d2a69e82e23557dedbff70ef96afe5a592e17'
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