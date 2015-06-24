$packageName = 'deviceioview'
$url = 'http://www.nirsoft.net/utils/deviceioview.zip'
$checksum = '6b01e792e79696dd00943e33cc38b3935fcc58e3'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/deviceioview-x64.zip'
$checksum64 = 'd4a70a9ac824bc13e87e09e0545c51f227e8c05d'
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