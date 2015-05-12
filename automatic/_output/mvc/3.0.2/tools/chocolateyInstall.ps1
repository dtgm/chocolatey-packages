$packageName = 'mvc'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://ftp.osuosl.org/pub/pculture.org/mirovideoconverter/MiroConverterSetup.exe'
$checksum = 'd50c915a1362a10edc3610520e70c3f7bac4cc86'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"