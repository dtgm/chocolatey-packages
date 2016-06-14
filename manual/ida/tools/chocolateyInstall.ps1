$packageName = 'ida'
$installerType = 'exe'
$url = 'https://out7.hex-rays.com/files/idafree50.exe'
$checksum = '8f83ba2b2173bbc3158300fa9e06ac3dc23165e6db6b67f9f0aba704c719eaf4'
$checksumType = 'sha256'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"