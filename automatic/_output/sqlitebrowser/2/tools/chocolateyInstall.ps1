$packageName = 'sqlitebrowser'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v3.6.0/sqlitebrowser-3.6.0v2-win32.exe'
$checksum = '814198f6a8eea997c13f898f5685c556'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"