$packageName = 'regscanner.portable'
$url = 'http://www.nirsoft.net/utils/regscanner.zip'
$checksum = 'efc058c1b8241e9c33531f8827b99efaf173e0d85af412939d416aeaf806f9e1'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/regscanner-x64.zip'
$checksum64 = 'dfe9c523f119f94f2a105c93ee7cfa307ae62f036a3e4283c1933f85e540f9cc'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "RegScanner.exe"

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