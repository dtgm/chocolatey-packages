$packageName = 'iconsext.portable'
$url = 'http://www.nirsoft.net/utils/iconsext.zip'
$checksum = '97582531dd0176e312f3a8b101e50d02224970aec5030f0e0ff2ac767f572981'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "iconsext.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null