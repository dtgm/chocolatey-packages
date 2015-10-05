$packageName = 'andy'
$installerType = 'exe'
$url = 'http://d1ubedgu4eka0j.cloudfront.net/ANDY/installer/v45/Andy_Android_Emulator_v45_40.exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$checksum = '28609093e96e13f7a40a650089a98662'
$checksumType = 'md5'

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"