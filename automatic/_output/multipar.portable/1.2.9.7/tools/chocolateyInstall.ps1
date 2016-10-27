$packageName = 'multipar.portable'
$url = 'http://multipar.eu//download/MultiPar1297.zip'
$checksum = '9FF71686292867F0E47A5A4FD88E9167AE5FF499'
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