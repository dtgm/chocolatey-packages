$packageName = 'lyx'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://ftp.ntua.gr/pub/X11/LyX/bin//2.1.3/LyX-2.1.3-Installer-1.exe'
$checksum = '8b0156cb912de1bfa22ad5e0ad88da6d22e06161'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
