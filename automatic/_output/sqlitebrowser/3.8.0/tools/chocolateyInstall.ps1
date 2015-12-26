$packageName = 'sqlitebrowser'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v3.8.0/sqlitebrowser-3.8.0-win32.exe'
$checksum = '450501653319da721a7978f6241ba80a'
$checksumType = 'md5'
$url64 = 'https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v3.8.0/sqlitebrowser-3.8.0-win64.exe'
$checksum64 = '12b5d90158b1483f65e55e6441042a2b'
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