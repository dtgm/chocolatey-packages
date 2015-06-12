$packageName = 'par2cmdline'
$url = 'https://github.com//Parchive/par2cmdline/releases/download/v0.6.13/par2cmdline-0.6.13-x86-win32.zip'
$checksum = '96a5d354e9eb0908a5c57b3dcfaae299'
$checksumType = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "par2.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"