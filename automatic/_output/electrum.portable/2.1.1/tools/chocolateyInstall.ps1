$packageName = 'electrum.portable'
$url = 'https://download.electrum.org/Electrum-2.1.1.zip'
$checksum = 'f2905ee2775f37fb7ccd11755615304e6b0a8cdc'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"