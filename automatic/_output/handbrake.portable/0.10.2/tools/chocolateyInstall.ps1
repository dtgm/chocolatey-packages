$packageName = 'handbrake.portable'
$url = 'https://handbrake.fr/rotation.php?file=HandBrake-0.10.2-i686-Win_CLI.zip'
$checksum = '7912de9fa74be269ccf4e2a15f078e8bd74c6d2e'
$checksumType = 'sha1'
$url64 = 'https://handbrake.fr/rotation.php?file=HandBrake-0.10.2-x86_64-Win_CLI.zip'
$checksum64 = 'ae035e3bc8c80e4a69ac1f1fb20a12d925577b54'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"