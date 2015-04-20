$packageName = 'andy'
$installerType = 'exe'
$url = 'http://d1ubedgu4eka0j.cloudfront.net/ANDY/installer/v43/Andy_Android_Emulator_v43_1.exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$checksum = '206e3706a33a76aa98cf310ff21123af'
$checksumType = 'md5'

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"