$packageName = 'seqdownload.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/seqdownload_setup.exe'
$checksum = '8315fde41e69f103e25ea3d18cf06ad1cd3ef100'
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