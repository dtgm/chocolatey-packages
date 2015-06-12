$packageName = 'aliengame'
$url = 'http://scienceathome.org/wp-content/uploads/2015/06/AlienGame_win_v0.2.2.zip'
$checksum = 'a4eb1e12f7858d5e3dad76111596d4275f9efb0c'
$checksumType = 'sha1'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$zipDir = Join-Path $toolsDir "AlienGame_win_v0.2.2"
$installFile = Join-Path $zipDir "AlienGame.exe"

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
