$packageName = 'nk2edit.portable'
$url = 'http://www.nirsoft.net/utils/nk2edit.zip'
$checksum = 'abdb042a2e88a7a9332aaa5e36eea24c3fca4deecc3aebb978e3592b40eb7015'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/nk2edit-x64.zip'
$checksum64 = '3d0c29b94057f337d34fa911f5f9e44b9078f0586f3c293ef71c1aec8c48179d'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "nk2edit.exe"

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