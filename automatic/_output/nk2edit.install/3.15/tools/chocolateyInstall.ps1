$packageName = 'nk2edit.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/nk2edit_setup.exe'
$checksum = 'de1b65f90777fddaf36dd49908e5dd150ef6a72e'
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