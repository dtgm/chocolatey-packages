$packageName = 'emule'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/emule/files/eMule/0.50a/eMule0.50a-Installer.exe/download'
$checksum = '185705e7d217132a104dc3f4ee12a72c7e8749ce'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"