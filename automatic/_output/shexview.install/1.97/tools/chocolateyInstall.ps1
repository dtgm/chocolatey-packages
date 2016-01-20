$packageName = 'shexview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/shexview_setup.exe'
$checksum = '225cb007a6369698d7570ba814a7471c19a68d59'
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