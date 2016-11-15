$packageName = 'dllexp'
$url = 'http://www.nirsoft.net/utils/dllexp.zip'
$checksum = '5a1149dc83b22f2c47600ab0f1f60c922607aaaa36feaee9c984f00ab7d96ec5'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/dllexp-x64.zip'
$checksum64 = '07d4ddd976679891eee2a252de585e1c101089bb4220a4cf3b221473db2bb3fd'
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