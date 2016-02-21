$packageName = 'whoistd.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/whoistd_setup.exe'
$checksum = '1aba4b253fa684a246e1d80a5c0eafcd9d99e8b7'
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