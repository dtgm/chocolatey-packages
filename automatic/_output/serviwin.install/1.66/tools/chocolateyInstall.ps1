$packageName = 'serviwin.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/serviwin_setup.exe'
$checksum = '2dbea803b441d624c6c49e7b012c852d9864624e'
$checksumType = 'sha1'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"