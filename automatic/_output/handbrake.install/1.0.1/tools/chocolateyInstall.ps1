$packageName = 'handbrake.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://handbrake.fr/rotation.php?file=HandBrake-1.0.1-i686-Win_GUI.exe'
$checksum = 'a0dd0cb03dc16c3af208d566393f2d4e10b566c3'
$checksumType = 'sha1'
$url64 = 'https://handbrake.fr/rotation.php?file=HandBrake-1.0.1-x86_64-Win_GUI.exe'
$checksum64 = '478b444e6707fb83a849fa4946becd01a6a03dcf'
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