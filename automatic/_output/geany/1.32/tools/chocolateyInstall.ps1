$packageName = 'geany'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.geany.org/geany-1.32_setup.exe'
$checksum = '7b1e44e1d4c6cd9b247e7baa95bfa93599d2bbe475d8e3240042e18f3dab98c6'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"