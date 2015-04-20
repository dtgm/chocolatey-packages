$packageName = 'frost'
$url = 'http://sourceforge.net/projects/jtcfrost/files/frost/2011-03-05/frost_2011-03-05.zip/download'
$checksum = 'caa34f3856d96e725ceb687efc0c507065151aa4'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"