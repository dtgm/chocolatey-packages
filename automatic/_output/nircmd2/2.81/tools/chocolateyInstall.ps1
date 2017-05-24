$packageName = 'nircmd2'
$url = 'http://www.nirsoft.net/utils/nircmd.zip'
$checksum = 'f56a6166f8956c507cc2bfec71339f3c467c0421fe6d16fbe4c52a36d79ce0ea'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/nircmd-x64.zip'
$checksum64 = '37445b39e2fc437688164866c495bd28890ded5d0dbf71615bf92776e57c5189'
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