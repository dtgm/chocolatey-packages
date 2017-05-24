$packageName = 'outlookstatview'
$url = 'http://www.nirsoft.net/utils/outlookstatview.zip'
$checksum = '32d56c12e83dbcdf590804b124765824caa0e3e2e9f01f2b81b85ea6c4248b40'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/outlookstatview-x64.zip'
$checksum64 = '594962c24b66b762a4c55c89e758fd7f7dd9a328f2b1e45ff09ed464b66ba664'
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