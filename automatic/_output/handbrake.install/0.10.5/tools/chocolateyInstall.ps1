$packageName = 'handbrake.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://handbrake.fr/rotation.php?file=HandBrake-0.10.5-i686-Win_GUI.exe'
$checksum = ''
$checksumType = 'sha1'
$url64 = 'https://handbrake.fr/rotation.php?file=HandBrake-0.10.5-x86_64-Win_GUI.exe'
$checksum64 = ''
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