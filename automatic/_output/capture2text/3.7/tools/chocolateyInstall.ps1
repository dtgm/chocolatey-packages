$packageName = 'capture2text'
$url = 'http://sourceforge.net/projects/capture2text/files/Capture2Text/Capture2Text_v3.7/Capture2Text_v3.7.zip/download'
$checksum = '9328b5a0da1dedd578514ea206a6a1c69fcced26'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"