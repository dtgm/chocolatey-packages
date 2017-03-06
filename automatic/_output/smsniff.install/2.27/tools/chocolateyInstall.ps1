$packageName = 'smsniff.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/smsniff_setup.exe'
$checksum = '372f91c3f479bff3797f34df5fa19d6865c791a5b8cf3a1adc97de654fc7462a'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"