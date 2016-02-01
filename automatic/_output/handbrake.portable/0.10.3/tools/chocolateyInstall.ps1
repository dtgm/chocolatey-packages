$packageName = 'handbrake.portable'
$url = 'https://handbrake.fr/rotation.php?file=HandBrake-0.10.3-i686-Win_CLI.zip'
$checksum = 'df0848939bcf2381ef49bdf338c0dfc1ab3fb26d'
$checksumType = 'sha1'
$url64 = 'https://handbrake.fr/rotation.php?file=HandBrake-0.10.3-x86_64-Win_CLI.zip'
$checksum64 = '37bb0fc997f53ec596174f31f2fe856e29836ef8'
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