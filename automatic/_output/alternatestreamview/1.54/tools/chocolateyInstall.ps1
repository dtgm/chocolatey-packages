$packageName = 'alternatestreamview'
$url = 'http://www.nirsoft.net/utils/alternatestreamview.zip'
$checksum = '98a1ce4d98f290b80d763e998a6b50b83d90176d2eee9ef53e22fcc0a992a807'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/alternatestreamview-x64.zip'
$checksum64 = '57696c753917ca381bf09c0afb8a5ee7c3f247f177c1a8bb0c99ea07bf35c3b5'
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