$packageName = 'produkey.portable'
$url = 'http://www.nirsoft.net/utils/produkey.zip'
$checksum = '3530e14d0e6f1f00d999b3de47dc36332db24500d85906df6e7ca1b3bd5d42de'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/produkey-x64.zip'
$checksum64 = '5972a7d019df5bdce7ac1ad090a47186f12abb6d254b2874ab72884e88a98a53'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "produkey.exe"

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