$packageName = 'geany-nogtk'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.geany.org/geany-1.26_nogtk_setup.exe'
$checksum = '23e92d6684da7cd3f1e1fc76ffc4943129868d63'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"