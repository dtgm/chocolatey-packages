$packageName = 'winprefetchview'
$url = 'http://www.nirsoft.net/utils/winprefetchview.zip'
$checksum = '48cb6473b8bfb1525d358fb6dd6f549d242913ab'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/winprefetchview-x64.zip'
$checksum64 = 'a9b71e2e3cbf4b0fe9b644e3adb4a2f6ccb13bb6'
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