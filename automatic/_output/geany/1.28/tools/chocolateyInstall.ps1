$packageName = 'geany'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.geany.org/geany-1.28_setup.exe'
$checksum = '3407f58cd829e1a7aa2e4decabebee16c5ba99821d15c172dd0f3c8db9aa4bbe'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"