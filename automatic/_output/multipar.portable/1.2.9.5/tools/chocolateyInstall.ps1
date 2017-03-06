$packageName = 'multipar.portable'
$url = 'http://multipar.eu//download/archive/dl.php?fn=MultiPar1295.zip'
$checksum = '9957EDDCEFAE1D3A7C664868B82AB9D601202332'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "MultiPar.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null