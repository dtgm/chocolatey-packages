$packageName = 'wirelessconnectioninfo'
$url = 'http://www.nirsoft.net/utils/wirelessconnectioninfo.zip'
$checksum = 'fcc109567fcd23ab03c6b0c254ccc8da7a22462d68a0bb0c382452e050daab20'
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