$packageName = 'wnetwatcher.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/wnetwatcher_setup.exe'
$checksum = 'ee7b2ffcaa11ab29b76fee9e4f90cc16812d01f9'
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