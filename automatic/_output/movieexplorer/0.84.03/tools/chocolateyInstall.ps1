$packageName = 'movieexplorer'
$url = 'https://github.com//anlarke/MovieExplorer/releases/download/v0.84c/MovieExplorer084c-32bit.zip'
$checksum = '8dc0218fa1649b8341b422e4c758269f'
$checksumType = 'md5'
$url64 = 'https://github.com//anlarke/MovieExplorer/releases/download/v0.84c/MovieExplorer084c-64bit.zip'
$checksum64 = '49761b016f31b32c9d193bd1b6fd026d'
$checksumType64 = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "MovieExplorer.exe"
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