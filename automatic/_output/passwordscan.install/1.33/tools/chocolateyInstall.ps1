$packageName = 'passwordscan.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/passwordscan_setup.exe'
$checksum = '0ab067a6a29303a492a343d3ac9c9a7786a70e6c'
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