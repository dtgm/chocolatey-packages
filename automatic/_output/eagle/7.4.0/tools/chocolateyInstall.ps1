$packageName = 'eagle'
$url = 'http://web.cadsoft.de/ftp/eagle/program/7.4/eagle-win32-7.4.0.exe'
$checksum = '890f8cb2b387c4a17adac37528dc3d93619a3d41'
$checksumType = 'sha1'
$url64 = 'http://web.cadsoft.de/ftp/eagle/program/7.4/eagle-win64-7.4.0.exe'
$checksum64 = '5dae52796a3779c2bf1ec36fd206763a87cf467e'
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