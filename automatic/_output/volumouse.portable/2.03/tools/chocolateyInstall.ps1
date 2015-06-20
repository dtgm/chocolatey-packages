$packageName = 'volumouse.portable'
$url = 'http://www.nirsoft.net/utils/volumouse.zip'
$checksum = '76a271be58697f057b5ac6c8e5f3ed979ac3cea8'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/volumouse-x64.zip'
$checksum64 = 'b76621ef7d6693e9c32c7a45da3baaa0b191a968'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "volumouse.exe"

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