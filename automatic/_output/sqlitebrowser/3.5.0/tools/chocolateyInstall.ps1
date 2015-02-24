$packageName = 'sqlitebrowser'
$installerType = 'exe'
$url = 'https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v3.5.0/sqlitebrowser-3.5.0-win32.exe'
$silentArgs = '/S'
$validExitCodes = @(0)  #valid exit codes http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$checksum = '3347e9ce8a618a6677f81df12ef4086a'
$checksumType = 'md5'
Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"