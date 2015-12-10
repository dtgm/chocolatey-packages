$packageName = 'regdllview'
$url = 'http://www.nirsoft.net/utils/regdllview.zip'
$checksum = '08c24bb610a74f031f56c5294eafadc851b13b95'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/regdllview-x64.zip'
$checksum64 = '33bd5fb45226788cd1db8c2a62d4effb4c8d366b'
$checksumType64 = 'sha1'
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