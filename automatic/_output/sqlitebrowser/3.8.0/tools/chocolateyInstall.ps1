$packageName = 'sqlitebrowser'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v3.8.0/sqlitebrowser-3.8.0-win32v3.exe'
$checksum = '25afc8556985cb2aad11eb64c1ec2c24'
$checksumType = 'md5'
$url64 = 'https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v3.8.0/sqlitebrowser-3.8.0-win64v2.exe'
$checksum64 = 'c94a66e769b3681d3bc3237b8c82739a'
$checksumType64 = 'md5'
$validExitCodes = @(0)

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