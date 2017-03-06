$packageName = 'produkey.portable'
$url = 'http://www.nirsoft.net/utils/produkey.zip'
$checksum = '287252bc9e1de7984cec3c31f75bf03531c02b716b88f073701a0c6816b75eba'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/produkey-x64.zip'
$checksum64 = '5ebe0c614404a16dfd602312091519235d37a96109f72cfca58e0159e6774b70'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "produkey.exe"

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