$packageName = 'dar'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/dar/files/dar/2.5.13/dar64-2.5.13-win64.zip/download'
$checksum = 'afe81cd8eb9bf9592073612f2e883c8a2a1a82a0ed9a8a3dfde064d2140311e4'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"