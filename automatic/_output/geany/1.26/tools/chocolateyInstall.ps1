$packageName = 'geany'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.geany.org/geany-1.26_setup.exe'
$checksum = 'c27d5b14e5244bea540e89d0755d8d988e454638'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"