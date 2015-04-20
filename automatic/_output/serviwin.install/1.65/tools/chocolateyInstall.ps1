$packageName = 'serviwin.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/serviwin_setup.exe'
$checksum = '97e4082d22cd8977185fb5a2c70644f2452f466a'
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