$packageName = 'videocacheview.portable'
$url = 'http://www.nirsoft.net/utils/videocacheview.zip'
$checksum = '7137e680b7d80140b8c1c40778a862de51e04678'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/videocacheview-x64.zip'
$checksum64 = 'ae5c80afbb0e76f52506a43eac8b1709514fdd9f'
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