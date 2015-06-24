$packageName = 'monero'
$url = ''
$checksum = ''
$checksumType = ''
$url64 = 'https://downloads.getmonero.org/win64'
$checksum64 = 'facbeb2e408cf8b9a46534363eba161dbb047654'
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