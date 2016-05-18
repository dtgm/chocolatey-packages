$packageName = 'eagle'
$url = 'http://web.cadsoft.de/ftp/eagle/program/7.6/eagle-win32-7.6.0.exe'
$checksum = 'eac0aced785652d817634da98fbe43865161969b'
$checksumType = 'sha1'
$url64 = 'http://web.cadsoft.de/ftp/eagle/program/7.6/eagle-win64-7.6.0.exe'
$checksum64 = '837ff947ed11545437cae0bde08676b98f4f7394'
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