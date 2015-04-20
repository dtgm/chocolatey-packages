$packageName = 'dupemerge'
$url = 'http://www.schinagl.priv.at/nt/dupemerge/dupemerge.zip'
$checksum = '42a94f09802c17a82d23e5ff261e3d8c2aab43de'
$checksumType = 'sha1'
$url64 = 'http://www.schinagl.priv.at/nt/dupemerge/dupemerge64.zip'
$checksum64 = '070c02f1336213a4f1e81d5dc04aba01792a077f'
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