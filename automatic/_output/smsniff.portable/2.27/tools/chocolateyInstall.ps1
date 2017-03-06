$packageName = 'smsniff.portable'
$url = 'http://www.nirsoft.net/utils/smsniff.zip'
$checksum = '3dc233829e7342779be5ba0f4fd62458e6bd84bf40a4ea96e6c22f09441b2ab3'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/smsniff-x64.zip'
$checksum64 = '567f2676faf4d03fcb7f19d7a43cea3ed91b3000d36a06776616161b51e0f3a6'
$checksumType64 = 'sha256'
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