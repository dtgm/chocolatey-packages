$packageName = 'andy'
$installerType = 'exe'
$url = 'http://d1ubedgu4eka0j.cloudfront.net/ANDY/installer/v43/Andy_v43_3.exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$checksum = '6c60b5a1915fe44593b47f61fee1c547'
$checksumType = 'md5'

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"