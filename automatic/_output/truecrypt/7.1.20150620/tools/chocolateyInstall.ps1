$packageName = 'truecrypt'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.truecrypt.ch/current/TrueCrypt%20Setup%207.1a.exe'
$checksum = '7689d038c76bd1df695d295c026961e50e4a62ea'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"