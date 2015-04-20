$packageName = 'webvideocap.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/webvideocap_setup.exe'
$checksum = 'e43431eb39d01e9d5be77b3d7bde936e567c968e'
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