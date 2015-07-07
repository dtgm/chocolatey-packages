$packageName = 'eagle'
$url = 'http://web.cadsoft.de/ftp/eagle/program/7.3/eagle-win32-7.3.0.exe'
$checksum = '8b46bcfde3e1f26287661b9c26d9764dfd1ce2c8'
$checksumType = 'sha1'
$url64 = 'http://web.cadsoft.de/ftp/eagle/program/7.3/eagle-win64-7.3.0.exe'
$checksum64 = '1fa26174a72b00ecc348e077fc0d0079b49bba04'
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