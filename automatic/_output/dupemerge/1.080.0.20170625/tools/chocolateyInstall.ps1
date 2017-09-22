$packageName = 'dupemerge'
$url = 'http://www.schinagl.priv.at/nt/dupemerge/dupemerge.zip'
$checksum = '3920dabadb4a2f3bae0c16c2e3e56e1c1383916d30e529adc1831199737b9bf4'
$checksumType = 'sha256'
$url64 = 'http://www.schinagl.priv.at/nt/dupemerge/dupemerge64.zip'
$checksum64 = 'd9074eacc8a4462a936686a87004fc196df6e3f3b0743348dba88e15b6ee0890'
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