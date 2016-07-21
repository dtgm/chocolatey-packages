$packageName = 'opensavefilesview'
$url = 'http://www.nirsoft.net/utils/opensavefilesview.zip'
$checksum = '355d0e3259920a99e2182f7fc8e9ed28e52101a8e69d47b0373bd4a059f7b1b8'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/opensavefilesview-x64.zip'
$checksum64 = '07d41f85a230c83bec1c78aa2075b3fc29cbc40ebc8ec2d5a6597f1487adaceb'
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