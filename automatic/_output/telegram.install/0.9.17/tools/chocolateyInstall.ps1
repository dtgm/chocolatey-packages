$packageName = 'telegram.install'
$installerType = 'exe'
$url = 'https://updates.tdesktop.com/tsetup/tsetup.0.9.17.exe'
$checksum = 'bd69a744a4cb1b868e56dd9686823da341a326db'
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