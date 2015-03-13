$packageName = 'ultravnc'
$installerType = 'msi'
$url = 'http://www.uvnc.eu/download/1205/UltraVnc_1205_x86.msi'
$url64 = 'http://www.uvnc.eu/download/1205/UltraVnc_1205_X64.msi'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$checksum = '{checksum}'
$checksumType = 'sha1'
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType"