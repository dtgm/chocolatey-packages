$packageName = 'exitdelay'
$url = 'http://www.pc-tools.net/files/win32/freeware/exitdelay-1.0.zip'
$checksum = '53a3fa7d57f125d759d47166ed37757936d8ced8'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
                             
Set-Content -Path ("$installFile.gui") `
            -Value $null