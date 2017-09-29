$packageName = 'sysexp.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/sysexp_setup.exe'
$checksum = '9bde68193cab12c7f41288e575f906992e27b279e3087e2cfe665159875d887e'
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