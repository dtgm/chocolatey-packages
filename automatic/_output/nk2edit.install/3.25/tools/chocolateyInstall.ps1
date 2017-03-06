$packageName = 'nk2edit.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/nk2edit_setup.exe'
$checksum = '{checksum}'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"