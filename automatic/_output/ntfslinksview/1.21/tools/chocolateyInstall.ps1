$packageName = 'ntfslinksview'
$url = 'http://www.nirsoft.net/utils/ntfslinksview.zip'
$checksum = '97b71d850638ff751a2edad3c8aef1e91c352766de56c42023cd6f47b8a3f38f'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/ntfslinksview-x64.zip'
$checksum64 = 'db33c452efdffcc42108bf60ec5ecc34c467c7799b3d04dc13187c2fa4703e4a'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null