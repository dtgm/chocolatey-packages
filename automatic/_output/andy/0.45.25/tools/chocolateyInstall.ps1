$packageName = 'andy'
$installerType = 'exe'
$url = 'http://d1ubedgu4eka0j.cloudfront.net/ANDY/installer/v45/Andy_Android_Emulator_v45_25.exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$checksum = '2766513a04b9ef1b227b1988daf39186'
$checksumType = 'md5'

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"