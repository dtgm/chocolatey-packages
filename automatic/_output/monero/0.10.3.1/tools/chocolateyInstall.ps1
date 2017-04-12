$packageName = 'monero'
$url = 'https://downloads.getmonero.org/cli/win32'
$checksum = 'da628a45adfcb8be44df06ac904711d644d608c4eb6479a5d256062a5f6d74de'
$checksumType = 'sha256'
$url64 = 'https://downloads.getmonero.org/cli/win64'
$checksum64 = '2fbda6f6b1051053703e40cf77b6c6e11334509ad03a3c22d89b6bcb05615910'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"