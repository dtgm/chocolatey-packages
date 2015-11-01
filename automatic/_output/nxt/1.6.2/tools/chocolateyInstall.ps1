$packageName = 'nxt'
$url = 'https://bitbucket.org/JeanLucPicard/nxt/downloads/nxt-client-1.6.2.zip'
$checksum = '041b280414cc24862074b090ea5c99447905ce69'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"