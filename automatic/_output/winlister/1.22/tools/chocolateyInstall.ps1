$packageName = 'winlister'
$url = 'http://www.nirsoft.net/utils/winlister.zip'
$checksum = '1285a20c47498f864bc33a7ab3cfd3c97168cbbbe9e14b1474b0bb5f02cd24a2'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/winlister-x64.zip'
$checksum64 = '2a07bb34147dea6ca6fbf2be6004ece72cc9ce308f29f86fa2e2d5842b7e997c'
$checksumType64 = 'sha256'
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