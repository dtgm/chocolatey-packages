$packageName = 'nk2edit.portable'
$url = 'http://www.nirsoft.net/utils/nk2edit.zip'
$checksum = 'b87a3b1f3c0a1811c0cfb962db05d4e914e5a536a3b54b308a5e260415b90057'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/nk2edit-x64.zip'
$checksum64 = '56ece1133edad7e27a790a3f6d23bea6ef053ed88172aba98d2c6f5f28b293c9'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "nk2edit.exe"

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