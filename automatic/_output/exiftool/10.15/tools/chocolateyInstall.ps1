$packageName = 'exiftool'
$url = 'http://owl.phy.queensu.ca/~phil/exiftool/exiftool-10.15.zip'
$checksum = 'de18cca7143dff1e81056d0a8a727b45edd40536'
$checksumType = 'sha1'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = "$checksumType"
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Move-Item "$(Join-Path $toolsDir 'exiftool(-k).exe')" "$(Join-Path $toolsDir 'exiftool.exe')" -Force