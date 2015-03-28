$packageName = 'aaclr'
$url = 'https://stexbar.googlecode.com/files/AAClr-1.0.2.zip'
$checksum = 'bd3dd74a453d4704aac112db5bdc88e7880aeeaf'
$checksumType = 'sha1'
$url64 = 'https://stexbar.googlecode.com/files/AAClr64-1.0.2.zip'
$checksum64 = '6c2b51030bf70a5c2f15180f26e69c2343adc97a'
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

Set-Content -Path ("$installFile.gui") -Value $null