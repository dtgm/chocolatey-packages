$packageName = 'retroshare'
$installerType = 'exe'
$silentArgs = '/S'
$url = '{getUrl}'
$checksum = '77a52f449461352066d627a3042b7f7fc5e9fa94'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"