$packageName = 'nsis.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/nsis/files/NSIS%203/3.02/nsis-3.02-setup.exe/download'
$checksum = '929c2386b8e5368536a59cec681e2f966fe9955d212f35df5cd17140bc412c3c'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"