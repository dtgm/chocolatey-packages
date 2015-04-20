$packageName = 'volumouse.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/volumouse_setup.exe'
$checksum = '3050e83caa3d9952730b4045153016a5d81062ee'
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