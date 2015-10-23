$packageName = 'ofview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/ofview_setup.exe'
$checksum = '5dc1877c8f191930709bd2c2221f5edf438890f1'
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