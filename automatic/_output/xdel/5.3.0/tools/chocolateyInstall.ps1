$packageName = 'xdel'
$url = 'http://www.schinagl.priv.at/nt/xdel/xdel.zip'
$checksum = 'f69972986d53529feaa1f529de415465724e3eff'
$checksumType = 'sha1'
$url64 = 'http://www.schinagl.priv.at/nt/xdel/xdel64.zip'
$checksum64 = '382f8684ce9a1b6e97fea8c559891e5a53d88371'
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