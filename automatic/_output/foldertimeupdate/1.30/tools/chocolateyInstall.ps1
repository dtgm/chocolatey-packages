$packageName = 'foldertimeupdate'
$url = 'http://www.nirsoft.net/utils/foldertimeupdate.zip'
$checksum = '67ae8a2c54d6dc9849b35da4ebe6c96d90ff1d9e'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/foldertimeupdate-x64.zip'
$checksum64 = 'f4bdee3b1bf4ebc63b7f013fd3c0f35ed3e3c856'
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