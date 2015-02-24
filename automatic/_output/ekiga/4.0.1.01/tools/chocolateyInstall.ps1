$packageName = 'ekiga'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://ftp.gnome.org/pub/gnome/binaries/win32/ekiga/4.0/ekiga-setup-4.0.1+.exe'
$checksum = 'ea916d0a8f42d4115ec97be7f7e0b22764ad4fb3'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
