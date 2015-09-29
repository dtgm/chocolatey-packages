$packageName = 'videocacheview.portable'
$url = 'http://www.nirsoft.net/utils/videocacheview.zip'
$checksum = '421208ac1439f3510cb8cdeb8a8ad0cf30971cd1'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/videocacheview-x64.zip'
$checksum64 = 'a2fd3768c14d729f8840501c4c7e8393cfd8d3d4'
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