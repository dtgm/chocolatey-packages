$packageName = 'cports'
$url = 'http://www.nirsoft.net/utils/cports.zip'
$checksum = '282c6b3726787515e96580eb5a8c0e0f9b856f28b421499ee67b6265eced51ee'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/cports-x64.zip'
$checksum64 = 'a5868340a49ed0b3dc8cdefc00aac8ce2a4b32d19fbfa582a1054f4f3e3c6f58'
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