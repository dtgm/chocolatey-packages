$packageName = 'geany'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.geany.org/geany-1.25_setup.exe'
$checksum = 'fcda91e05b23ec1fa37fcfdabcc7ccbf476ae6aa'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"