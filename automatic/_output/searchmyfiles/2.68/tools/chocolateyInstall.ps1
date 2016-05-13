$packageName = 'searchmyfiles'
$url = 'http://www.nirsoft.net/utils/searchmyfiles.zip'
$checksum = '4fcc894c442a93f893248b870224f59229343e7a'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/searchmyfiles-x64.zip'
$checksum64 = '8ef4dfbabfb7afc04ad5d1406f64e72a90d074ec'
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