$packageName = 'usbdeview'
$url = 'http://www.nirsoft.net/utils/usbdeview.zip'
$checksum = '8a3c39b8c8262ce549ae0fb1b431eb5dc7cf53f3585326e1e9d9cb2f15f8b46b'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/usbdeview-x64.zip'
$checksum64 = '1135cb2c6b19e69927b03bb99dd36d94e30f8c78b56d7eef52bc2e2da0ddab1a'
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