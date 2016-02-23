$packageName = 'cports'
$url = 'http://www.nirsoft.net/utils/cports.zip'
$checksum = 'e7e3c258d88e8f25dbeb3d854c9c2d303fc2c9b5'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/cports-x64.zip'
$checksum64 = '7b82f8ff98c39cde3d639f881915221f66bd29fe'
$checksumType64 = 'sha1'
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