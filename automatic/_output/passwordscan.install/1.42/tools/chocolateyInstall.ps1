$packageName = 'passwordscan.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/passwordscan_setup.exe'
$checksum = '9377a22df197bd34a3020d2bff64de390bd5b84ee276b445986a48766c8cd178'
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