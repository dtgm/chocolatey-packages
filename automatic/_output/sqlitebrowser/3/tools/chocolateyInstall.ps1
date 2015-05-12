$packageName = 'sqlitebrowser'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v3.6.0/sqlitebrowser-3.6.0v3-win32.exe'
$checksum = '70fb120aca2fd83781347454ce5e4df1'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"