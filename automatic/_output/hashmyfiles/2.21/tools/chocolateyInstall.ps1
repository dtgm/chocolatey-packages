$packageName = 'hashmyfiles'
$url = 'http://www.nirsoft.net/utils/hashmyfiles.zip'
$checksum = '38a8d5cc662aa38358b7df1d944359fac3c776a2cd570d187c7906e37372e54b'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/hashmyfiles-x64.zip'
$checksum64 = '10509a28fbdb2890f5e5563a46f847d79d9365fa89cab1944873b0652399d58c'
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