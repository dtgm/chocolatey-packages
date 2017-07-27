$packageName = 'pinginfoview'
$url = 'http://www.nirsoft.net/utils/pinginfoview.zip'
$checksum = 'a7b08c83bdeebbc656fe395c5ade14c612823a0a0ae24a19d61d80e0f222e341'
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