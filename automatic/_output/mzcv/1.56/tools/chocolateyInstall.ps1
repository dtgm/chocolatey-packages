$packageName = 'mzcv'
$url = 'http://www.nirsoft.net/utils/mzcv.zip'
$checksum = 'e6f6b04b1631fbf2558aca551be1eff7dbd55a6f6e89e17fef3f7276eb54340e'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null