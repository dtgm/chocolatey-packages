$packageName = 'aliengame'
$url = 'http://scienceathome.org/wp-content/uploads/2015/05/AlienGame_win_v0.2.1.zip'
$checksum = '7c6df0c2606773b111deb8a82943e622d9296ae9'
$checksumType = 'sha1'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$zipDir = Join-Path $toolsDir "AlienGame_win_v0.2.1"
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
