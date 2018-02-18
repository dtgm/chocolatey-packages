$packageName = 'usbdeview'
$url = 'http://www.nirsoft.net/utils/usbdeview.zip'
$checksum = 'b5c7a822ba6bf9badf24ba94259697c52a7fecfd6d99fb36ccea5748915c239e'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/usbdeview-x64.zip'
$checksum64 = '1f0047eb94e77a683c13b9f285f9073de80f3475459a319716b6de87b3b75b95'
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