$packageName = 'ipnetinfo.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/ipnetinfo_setup.exe'
$checksum = '476cd6f4fe0a29ef65ead82e1c691a7653a8b1323dde00747e7e5502af7179b6'
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