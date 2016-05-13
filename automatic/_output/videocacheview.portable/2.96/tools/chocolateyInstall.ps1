$packageName = 'videocacheview.portable'
$url = 'http://www.nirsoft.net/utils/videocacheview.zip'
$checksum = 'f185d58fe61019f1d2da046a98c5ecea9bf07fb7'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/videocacheview-x64.zip'
$checksum64 = '11987c35952e200f1a0f10dd0d76a1a5e526709a'
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