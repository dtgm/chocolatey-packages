$packageName = 'nk2edit.portable'
$url = 'http://www.nirsoft.net/utils/nk2edit.zip'
$checksum = '055b915a12fcf6344c72ec89b1241596292a921c1ea42691d10f8c53bfd86d11'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/nk2edit-x64.zip'
$checksum64 = 'c12500c98eb36d953314148a9e2058c432c811172974e3a3c804709b92c82962'
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