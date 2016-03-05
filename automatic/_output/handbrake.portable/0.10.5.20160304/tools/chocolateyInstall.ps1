$packageName = 'handbrake.portable'
$url = 'https://handbrake.fr/rotation.php?file=HandBrake-0.10.5-i686-Win_CLI.zip'
$checksum = '7d66daf8a5b3208854e5a490ecefaf12f54e33ba'
$checksumType = 'sha1'
$url64 = 'https://handbrake.fr/rotation.php?file=HandBrake-0.10.5-x86_64-Win_CLI.zip'
$checksum64 = 'cb9b25d289e8ff198cfc25065e0f659ac135d9b8'
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