$packageName = 'lili.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.tuxfamily.org/lilicreator/stable/LinuxLive USB Creator 2.9.4.exe'
$checksum = '0ad5e7c1aeca53361ddb8798ff500e9af4fcabc8'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"