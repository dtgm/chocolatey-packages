$packageName = 'netbeans'
$installerType = 'exe'
$silentArgs = '--silent'
$url = 'http://download.netbeans.org/netbeans/8.1/final/bundles/netbeans-8.1-javase-windows.exe'
$checksum = 'beca14d486e61efa5c213553a640281054b98b8f'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"