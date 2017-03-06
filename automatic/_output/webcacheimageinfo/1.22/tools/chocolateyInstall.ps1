$packageName = 'webcacheimageinfo'
$url = 'http://www.nirsoft.net/utils/webcacheimageinfo.zip'
$checksum = 'b7163bdd92adaa0c1eb9171d0072e9703fd9fa25757c2af5a0fc4ec762214dfb'
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