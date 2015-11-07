$packageName = 'usbdeview'
$url = 'http://www.nirsoft.net/utils/usbdeview.zip'
$checksum = '24d33cedaee7271cc66c9f4943a8fcc0ee734ff7'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/usbdeview-x64.zip'
$checksum64 = 'b2140b518dbd3aa5a41bfbbda8d894007d86f870'
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