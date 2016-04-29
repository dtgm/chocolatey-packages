$packageName = 'ipnetinfo.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/ipnetinfo_setup.exe'
$checksum = '2b6531cd22c243b8a6d0fc69893ae2b266e998b6'
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