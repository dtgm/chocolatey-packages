$packageName = 'smsniff.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/smsniff_setup.exe'
$checksum = '808faf3a442f2c77d9536ae5ce241f4f58a73c35'
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