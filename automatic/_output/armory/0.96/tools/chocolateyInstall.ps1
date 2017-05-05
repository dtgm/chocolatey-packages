$packageName = 'armory'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/goatpig/BitcoinArmory/releases/download/v0.96/armory_0.96_win64.exe'
$checksum = 'fce84bd0964a43a677b1be689e321c562c10a202a35fd052975f3c3536055dd7'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"