$packageName = 'shexview.portable'
$url = 'http://www.nirsoft.net/utils/shexview.zip'
$checksum = 'a01b288406c61328cb2e227e5f6604ec74378695'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/shexview-x64.zip'
$checksum64 = 'aa125eb0155f15998c6b04b5e944bc08dd002690'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "shexview.exe"

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