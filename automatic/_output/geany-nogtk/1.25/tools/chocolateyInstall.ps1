$packageName = 'geany-nogtk'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.geany.org/geany-1.25_nogtk_setup.exe'
$checksum = '3807a34ef2af9a395cca355c655043f1cc11fdbf'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"