$packageName = 'hugin.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://sourceforge.net/projects/hugin/files/hugin/hugin-2016.2/Hugin-2016.2.0-win32.msi/download'
$checksum = '5f3231fa32747301dca2276cc0cb5b3724380151489078fb3baee30439274ba7'
$checksumType = 'sha256'
$url64 = 'https://sourceforge.net/projects/hugin/files/hugin/hugin-2016.2/Hugin-2016.2.0-win64.msi/download'
$checksum64 = '0bff49a281fd2582e4670d6ab6f511a96afedb3978ff4da1ade7d7a9a16f4dae'
$checksumType64 = 'sha256'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"