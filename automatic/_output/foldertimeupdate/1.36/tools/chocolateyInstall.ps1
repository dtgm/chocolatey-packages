$packageName = 'foldertimeupdate'
$url = 'http://www.nirsoft.net/utils/foldertimeupdate.zip'
$checksum = '720c01d8117dcc872d0152f8c346b6c299beca1f'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/foldertimeupdate-x64.zip'
$checksum64 = '4491b44bca593d03f67f95c4f4ce119d1921dcab'
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