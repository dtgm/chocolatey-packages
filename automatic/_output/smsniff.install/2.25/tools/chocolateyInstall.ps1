$packageName = 'smsniff.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/smsniff_setup.exe'
$checksum = '02d7b51079c937150099942d42de58231f217afc'
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