$packageName = 'usbdeview'
$url = 'http://www.nirsoft.net/utils/usbdeview.zip'
$checksum = '0f77b8a2ed993877f6e84dd520bc002e1ed9e02f9c5155715485bcbc017d8460'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/usbdeview-x64.zip'
$checksum64 = '3ac6d853b0eba6c2c59c98984c905838394351025a440f1d6393fd2c51366c3d'
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