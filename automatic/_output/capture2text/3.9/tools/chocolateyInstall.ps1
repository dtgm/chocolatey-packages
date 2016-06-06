$packageName = 'capture2text'
$url = 'https://sourceforge.net/projects/capture2text/files/Capture2Text/Capture2Text_v3.9/Capture2Text_v3.9.zip'
$checksum = '8e08c51bc95fd346f60f10f8d1e8f880008c18e316ab3a67acc6220a50acc294'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"