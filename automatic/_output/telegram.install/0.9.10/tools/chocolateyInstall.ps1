$packageName = 'telegram.install'
$installerType = 'exe'
$url = 'https://updates.tdesktop.com/tsetup/tsetup.0.9.10.exe'
$checksum = '0d5605fed0f6bec9e949754a22733953d03577d6'
$checksumType = 'sha1'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) 

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"