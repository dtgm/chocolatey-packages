$packageName = 'movieexplorer'
$url = 'https://github.com//anlarke/MovieExplorer/releases/download/v0.84b/MovieExplorer084b-32bit.zip'
$checksum = 'd7a190e672e229c477a2b4f1c3b69dba'
$checksumType = 'md5'
$url64 = 'https://github.com//anlarke/MovieExplorer/releases/download/v0.84b/MovieExplorer084b-64bit.zip'
$checksum64 = '0ab5c16bd79dba6a20c17f0b7b08e654'
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