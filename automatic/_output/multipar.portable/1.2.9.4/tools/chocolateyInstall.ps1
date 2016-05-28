$packageName = 'multipar.portable'
$url = 'http://multipar.eu//download/archive/dl.php?fn=MultiPar1294.zip'
$checksum = '3D59FE99D1EA7590C9890707D59775C0D4B30C96'
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