$packageName = 'nk2edit.portable'
$url = 'http://www.nirsoft.net/utils/nk2edit.zip'
$checksum = 'ebaec099a5616667652d71cb4dba3523fca91ef0'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/nk2edit-x64.zip'
$checksum64 = '08187a2eba8cb69b514525d5206b43b876ec71e7'
$checksumType64 = 'sha1'
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