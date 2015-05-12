$packageName = 'winprefetchview'
$url = 'http://www.nirsoft.net/utils/winprefetchview.zip'
$checksum = 'cd495913fb278586eaa7742b52716f9d70937e40'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/winprefetchview-x64.zip'
$checksum64 = '8c64a1d02f54c44a3a3e762a0c42d0134d5423d5'
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