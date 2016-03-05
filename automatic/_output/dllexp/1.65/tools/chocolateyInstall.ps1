$packageName = 'dllexp'
$url = 'http://www.nirsoft.net/utils/dllexp.zip'
$checksum = '769e79c05aff2077f0bc49bfd43a767473d7f608'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/dllexp-x64.zip'
$checksum64 = '567ddd60b9746d7c07d59ab78e16580ddedb1cc7'
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