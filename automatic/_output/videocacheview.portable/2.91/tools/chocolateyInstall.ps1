$packageName = 'videocacheview.portable'
$url = 'http://www.nirsoft.net/utils/videocacheview.zip'
$checksum = '59a3405e8c87ba2bec155a3fae859baec0cc923f'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/videocacheview-x64.zip'
$checksum64 = '4dac84b38313fa20d1b2bebb893fdba7d04a9544'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "videocacheview.exe"

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