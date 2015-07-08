$packageName = 'movieexplorer'
$url = 'https://github.com//anlarke/MovieExplorer/releases/download/v0.84a/MovieExplorer084a-32bit.zip'
$checksum = '6ef07863f364b8173d63db1656110163'
$checksumType = 'md5'
$url64 = 'https://github.com//anlarke/MovieExplorer/releases/download/v0.84a/MovieExplorer084a-64bit.zip'
$checksum64 = 'a247cf7c0994d01007bcc54d55c1a147'
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