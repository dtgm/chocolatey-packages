$packageName = 'geany-nogtk'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.geany.org/geany-1.24_nogtk_setup.exe'
$checksum = '416afba01c202f70df6dcb2cc2eb6b7b05681db5'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"