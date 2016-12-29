$packageName = 'handbrake.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://handbrake.fr/rotation.php?file=HandBrake-1.0.0-i686-Win_GUI.exe'
$checksum = '2896fe0e3c8516f44cf88b37650bc0c27207a88f'
$checksumType = 'sha1'
$url64 = 'https://handbrake.fr/rotation.php?file=HandBrake-1.0.0-x86_64-Win_GUI.exe'
$checksum64 = 'd304173fe8af7ed30d89f707fd1d16c8238e03bf'
$checksumType64 = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"