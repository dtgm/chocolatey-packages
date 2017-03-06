$packageName = 'usbdeview'
$url = 'http://www.nirsoft.net/utils/usbdeview.zip'
$checksum = 'e1a6650ff6f72765a338af599e489ab2632ef2eb190915c0db25e86e44494d22'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/usbdeview-x64.zip'
$checksum64 = 'fd5360fdf628635c0433446ef5e9d8189658840570e2339cf2c9f91d9478a33d'
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