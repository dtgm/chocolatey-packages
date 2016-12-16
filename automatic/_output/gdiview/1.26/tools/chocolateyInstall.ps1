$packageName = 'gdiview'
$url = 'http://www.nirsoft.net/utils/gdiview.zip'
$checksum = '30dc7eda83eee7826e677c5f27a89d8389fb632476d4e413e332ae73769c32f6'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/gdiview-x64.zip'
$checksum64 = '45aeca625ed56662df1d52cca0f1b6e4ecd373b58ce8dcf07106f07f8dbc63e4'
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