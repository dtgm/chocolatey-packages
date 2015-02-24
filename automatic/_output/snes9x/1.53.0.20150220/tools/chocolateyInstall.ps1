$packageName = "snes9x"
$url = "http://www.s9x-w32.de/dl/snes9x-1.53-win32.zip"
$checksum = '75812b1e67a4574f1b69d5aac13d87da369388ad'
$checksumType = 'sha1'
$url64 = "http://www.s9x-w32.de/dl/snes9x-1.53-win32-x64.zip"
$checksum64 = '7ab5b488e0c00b05b25c9658ba79d2b526a56d0b'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "$url64" -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"