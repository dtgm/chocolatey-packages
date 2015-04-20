$packageName = 'iepv.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/toolsdownload/iepv_setup.exe'
$checksum = 'c0e2bc1a0dd936bd43189f500b90a7f54ebecf1d'
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