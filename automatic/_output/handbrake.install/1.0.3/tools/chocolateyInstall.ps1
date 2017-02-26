$packageName = 'handbrake.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://handbrake.fr/rotation.php?file=HandBrake-1.0.3-i686-Win_GUI.exe'
$checksum = '16f9e7b80b7d40c8908b3c0ce08b2b767988f286'
$checksumType = 'sha1'
$url64 = 'https://handbrake.fr/rotation.php?file=HandBrake-1.0.3-x86_64-Win_GUI.exe'
$checksum64 = '2c07352b32add0bffcf62476db090dbd76ce2145'
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