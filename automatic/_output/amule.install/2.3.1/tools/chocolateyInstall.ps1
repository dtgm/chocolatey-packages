$packageName = 'amule.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/amule/files/aMule/2.3.1/aMule-2.3.1-installer.exe/download'
$checksum = '898ef51a079d2496a489a6f6be89ab35a9b2cc6c'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"