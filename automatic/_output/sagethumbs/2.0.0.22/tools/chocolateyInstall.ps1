$packageName = 'sagethumbs'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/sagethumbs/files/sagethumbs_2.0.0.22_setup.exe/download'
$checksum = '6eb22621abffc880e05195af8eeef2e30be94500'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"