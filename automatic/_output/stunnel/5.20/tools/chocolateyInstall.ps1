$packageName = 'stunnel'
$url = 'https://www.stunnel.org/downloads/archive/5.x/stunnel-5.20-installer.exe'
$checksum = 'a085f578d99c132f06443997255eda0ff2218221'
$checksumType = 'sha1'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"