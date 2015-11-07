$packageName = 'lili.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.tuxfamily.org/lilicreator/stable/LinuxLive USB Creator 2.9.4.exe'
$checksum = '850c748520dafed21d955c0adf551cc77d3bb99b'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"