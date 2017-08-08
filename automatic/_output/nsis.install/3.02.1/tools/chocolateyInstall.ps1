$packageName = 'nsis.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/nsis/files/NSIS%203/3.02.1/nsis-3.02.1-setup.exe/download'
$checksum = '736c9062a02e297e335f82252e648a883171c98e0d5120439f538c81d429552e'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"