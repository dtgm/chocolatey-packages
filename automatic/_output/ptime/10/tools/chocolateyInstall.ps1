$packageName = 'ptime'
$url = 'http://www.pc-tools.net/files/win32/freeware/ptime-10.zip'
$checksum = 'a9a7d98f0b66adaacca34a36a9f0b65aaf558c65'
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