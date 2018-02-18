$packageName = 'usblogview'
$url = 'http://www.nirsoft.net/utils/usblogview.zip'
$checksum = '88e5b26a1999635b10b0df6349ae0349afeca42fbb4fcd59524ac1067ede5ef9'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null