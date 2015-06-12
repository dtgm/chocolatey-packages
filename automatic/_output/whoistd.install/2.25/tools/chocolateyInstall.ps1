$packageName = 'whoistd.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/whoistd_setup.exe'
$checksum = 'f21a52a6ef1e4bb1dfe0f295db883cd74fbdbf80'
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