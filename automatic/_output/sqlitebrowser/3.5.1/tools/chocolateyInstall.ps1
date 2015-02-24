$packageName = 'sqlitebrowser'
$installerType = 'exe'
$url = 'https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v3.5.1/sqlitebrowser-3.5.1-win32.exe'
$silentArgs = '/S'
$validExitCodes = @(0)  #valid exit codes http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$checksum = '309a18c446078d7054c5a6393bc09b08'
$checksumType = 'md5'
Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"