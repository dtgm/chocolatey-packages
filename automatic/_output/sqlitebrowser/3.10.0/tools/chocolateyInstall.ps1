$packageName = 'sqlitebrowser'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v3.10.0/DB.Browser.for.SQLite-3.10.0-win32.exe'
$checksum = '4537e79103f20aeb57ce0fffe6eb77c3'
$checksumType = 'md5'
$url64 = 'https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v3.10.0/DB.Browser.for.SQLite-3.10.0-win64.exe'
$checksum64 = '24eb6b9f616457b36c5b263997f621d0'
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