$packageName = 'sqlitebrowser'
$installerType = 'exe'
$url = 'https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v3.4.0/sqlitebrowser-3.4.0-win32.exe'
$silentArgs = '/S'
$validExitCodes = @(0)  #valid exit codes http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$checksum = 'dc21c88a14d120c0473d6475cc8dbc12'
$checksumType = 'md5'
Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"