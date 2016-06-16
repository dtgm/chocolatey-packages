$packageName = 'whoistd.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/whoistd_setup.exe'
$checksum = '97f59448a35451483aa8fcb5a14d3678350bf31408365b35e66658b9402a80d7'
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