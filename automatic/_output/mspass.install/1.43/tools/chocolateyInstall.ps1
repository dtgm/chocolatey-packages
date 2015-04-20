$packageName = 'mspass.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/toolsdownload/mspass_setup.exe'
$checksum = '2f98dbccb18fe8a48ee108850a777198ef9e1246'
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