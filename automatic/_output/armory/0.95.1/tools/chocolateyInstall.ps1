$packageName = 'armory'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/goatpig/BitcoinArmory/releases/download/v0.95.1/armory_0.95.1_win64.exe'
$checksum = 'ccb495aa3a695e43ac04b4741dd8f8463d5349192a0f5db895dbd2e834e5844a'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"