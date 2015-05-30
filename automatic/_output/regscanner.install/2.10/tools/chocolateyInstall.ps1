$packageName = 'regscanner.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/regscanner_setup.exe'
$checksum = 'f7f6131361e1499a32326255840fea9ff2ba9289'
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