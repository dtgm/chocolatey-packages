$packageName = 'mweather.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/mweather_setup.exe'
$checksum = '8d60a55171de6554c4e5d34a3160884a63ae97a3'
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