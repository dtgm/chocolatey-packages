$packageName = 'serviwin.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/serviwin_setup.exe'
$checksum = 'ddc64fa475477b378a0767707a47a39a88c42cb6fa02c151852e6f3391bf009c'
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