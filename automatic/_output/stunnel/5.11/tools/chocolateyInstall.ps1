$packageName = 'stunnel'
$url = 'https://www.stunnel.org/downloads/archive/5.x/stunnel-5.11-installer.exe'
$checksum = '3e2e7ddb9cedb3ca109b2c753b5245f81a2d3e91'
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