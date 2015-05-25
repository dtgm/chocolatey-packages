$packageName = 'openstego.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/openstego/files/openstego/openstego-0.6.1/Setup-OpenStego-0.6.1.exe/download'
$checksum = 'c343f8dadb6ca89e42a0d43bca36161d95f952a4'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"