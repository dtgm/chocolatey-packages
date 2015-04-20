$packageName = 'netpass.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net//toolsdownload/netpass_setup.exe'
$checksum = '0c92b25a37a8c75e4aecbe545c817dbfe6bc8fc4'
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