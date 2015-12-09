$packageName = 'usbdeview'
$url = 'http://www.nirsoft.net/utils/usbdeview.zip'
$checksum = 'ca0deb1dd66a6fc07122f7758ae139e98555a0d7'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/usbdeview-x64.zip'
$checksum64 = '6dc5c88f347660088a40104ce76d79de0f1e360e'
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