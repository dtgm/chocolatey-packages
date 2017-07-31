$packageName = 'foldertimeupdate'
$url = 'http://www.nirsoft.net/utils/foldertimeupdate.zip'
$checksum = '3903ec11a503d6cdfb10ffdd03df038549e0c97de631c33355ed2cd911a1544b'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/foldertimeupdate-x64.zip'
$checksum64 = '5c9652f041b88c03d6318f58106a1a1e3e5f45f2153229be8acdd2173c04f115'
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