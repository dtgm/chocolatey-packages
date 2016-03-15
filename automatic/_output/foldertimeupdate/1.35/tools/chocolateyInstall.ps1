$packageName = 'foldertimeupdate'
$url = 'http://www.nirsoft.net/utils/foldertimeupdate.zip'
$checksum = 'd972ff120042277807d64a48d5bfbeae2b700d32'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/foldertimeupdate-x64.zip'
$checksum64 = '07f93038001e9a7df5b6ceaf6f15adb33f72f0e2'
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