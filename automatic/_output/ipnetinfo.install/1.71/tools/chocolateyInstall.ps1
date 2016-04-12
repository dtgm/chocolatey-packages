$packageName = 'ipnetinfo.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/ipnetinfo_setup.exe'
$checksum = 'e8b9d1823e38a44a2e694c219b3c003dd6af23fb'
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