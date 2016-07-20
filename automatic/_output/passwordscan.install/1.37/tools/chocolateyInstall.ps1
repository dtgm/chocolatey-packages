$packageName = 'passwordscan.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/passwordscan_setup.exe'
$checksum = '20253ce1cb10e3a8965157b79248f2087b7e1f71cd53838e9f1af812e6f1de7d'
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