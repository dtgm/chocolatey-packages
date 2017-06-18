$packageName = 'dupemerge'
$url = 'http://www.schinagl.priv.at/nt/dupemerge/dupemerge.zip'
$checksum = 'ab7d3d5469ac132661e3654426b2421b25f7a973db75cd1ef8900b941a5bf907'
$checksumType = 'sha256'
$url64 = 'http://www.schinagl.priv.at/nt/dupemerge/dupemerge64.zip'
$checksum64 = '1d31273c61eabf9db9a2d270ee8746669dee7927943e52cc5de4c18b7546c64a'
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