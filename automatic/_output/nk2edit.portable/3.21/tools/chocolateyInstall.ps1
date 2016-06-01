$packageName = 'nk2edit.portable'
$url = 'http://www.nirsoft.net/utils/nk2edit.zip'
$checksum = '376c933998685a4ab5456dd903c6517bef2b68a46a5097aa0647c6a26f4fede9'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/nk2edit-x64.zip'
$checksum64 = 'cd0ee9272d065fbc38d684317ab1d45d3dabef103586fcbbb74192b2014a89b5'
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