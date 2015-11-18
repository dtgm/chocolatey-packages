$packageName = 'eagle'
$url = 'http://web.cadsoft.de/ftp/eagle/program/7.5/eagle-win32-7.5.0.exe'
$checksum = 'ad163e7e8ee848dcb6e92804b23041d3eee35688'
$checksumType = 'sha1'
$url64 = 'http://web.cadsoft.de/ftp/eagle/program/7.5/eagle-win64-7.5.0.exe'
$checksum64 = '84233cdf7d12c1b7fdc80f3137b8113bafecbc93'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path -Path $toolsDir `
                         -ChildPath "bin" `
             | Join-Path -ChildPath "$($packageName).exe"

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