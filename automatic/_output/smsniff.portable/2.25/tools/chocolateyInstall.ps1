$packageName = 'smsniff.portable'
$url = 'http://www.nirsoft.net/utils/smsniff.zip'
$checksum = 'ebf09a23b1b2fada9678d82cc0ebf4e0ea330c90'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/smsniff-x64.zip'
$checksum64 = 'f1a38dfd379bd674a1cf7677d18d8974664c4b74'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "smsniff.exe"

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