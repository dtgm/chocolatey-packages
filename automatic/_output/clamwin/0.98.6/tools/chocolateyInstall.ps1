$packageName = 'clamwin'
$installerType = 'exe'
$url = 'http://sourceforge.net/projects/clamwin/files/clamwin/0.98.6/clamwin-0.98.6-setup.exe/download'
$checksum = 'd5cfc9aa41051ed9765f39c58f348b56a6af9c03'
$checksumType = 'sha1'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
