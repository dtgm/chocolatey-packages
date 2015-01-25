$packageName = 'quiterss'
$installerType = 'exe'
$url = 'http://quiterss.org/files/0.17.5/QuiteRSS-0.17.5-Setup.exe'
$checksum = 'cc891d2ca474f8d5d269fb7e0166088b'
$checksumType = 'md5'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType"
