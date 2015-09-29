$packageName = 'shexview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/shexview_setup.exe'
$checksum = 'a4bc80ce3df883edbd01c92dd1a450607fb89c5e'
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