$packageName = 'freearc.portable'
$url = 'http://freearc.org/download/0.666/FreeArc-portable-0.666-win32.zip'
$checksum = '6e3a51e8f6f866d5681ad9b75c4814184abc586a'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
