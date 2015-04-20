$packageName = 'shexview.portable'
$url = 'http://www.nirsoft.net/utils/shexview.zip'
$checksum = '41de6f2448fdaaca987cdc461edcbac4102cae78'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/shexview-x64.zip'
$checksum64 = 'ede598083ece04c9c1a72f7c465a5243a785ca7f'
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