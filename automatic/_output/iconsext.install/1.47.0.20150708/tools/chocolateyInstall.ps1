$packageName = 'iconsext.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/iconsext_setup.exe'
$checksum = 'bc6f7263a22028dbd115f6bdfce7953d8a0f1766'
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