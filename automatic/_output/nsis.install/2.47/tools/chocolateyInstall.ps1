$packageName = 'nsis.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/nsis/files/NSIS%202/2.47/nsis-2.47-setup.exe/download'
$checksum = '43545716316b4bac9f5bd1cbda86fd4d4be53796'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"