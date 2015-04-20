$packageName = 'andy'
$installerType = 'exe'
$url = 'http://d1ubedgu4eka0j.cloudfront.net/ANDY/installer/v43/Andy_Android_Emulator_v43.exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$checksum = 'e1c09508abbd95a046adbdca5f1a7372'
$checksumType = 'md5'

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"