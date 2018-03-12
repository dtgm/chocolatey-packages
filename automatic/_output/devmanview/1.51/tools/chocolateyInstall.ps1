$packageName = 'devmanview'
$url = 'http://www.nirsoft.net/utils/devmanview.zip'
$checksum = '3f00c859fec888b707b9b29f3f2fe57a7d944beda9c64125eeeaf287c8fb38ba'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/devmanview-x64.zip'
$checksum64 = 'f6c660f0ab4e77b461dffbb611cabb45ca83d2f22760d3a904c0bc46e8d8ce82'
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