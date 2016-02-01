$packageName = 'quiterss'
$installerType = 'exe'
$url = 'http://quiterss.org/files/0.18.3/QuiteRSS-0.18.3-Setup.exe'
$checksum = 'e250d6bd9367f5e06291c75720f0d603'
$checksumType = 'md5'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType"
