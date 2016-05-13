$packageName = 'nxt'
$url = 'https://bitbucket.org/JeanLucPicard/nxt/downloads/nxt-client-1.8.2.zip'
$checksum = 'e37067e750ac68f8a60a22c41b27ed201ce67d71'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"