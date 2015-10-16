$packageName = 'glasswire'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.glasswire.com/GlassWireSetup.exe'
$checksum = 'F409DCC354860E6CE22ECE4674A694D0'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"