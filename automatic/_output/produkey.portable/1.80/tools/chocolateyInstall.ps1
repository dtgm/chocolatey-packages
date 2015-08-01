$packageName = 'produkey.portable'
$url = 'http://www.nirsoft.net/utils/produkey.zip'
$checksum = '99d31cf98e46b398ccfae6f8fb2949b1834e7f27'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/produkey-x64.zip'
$checksum64 = '04f3cb5ff6652420894f8816186948a0eb2968d8'
$checksumType64 = 'sha1'
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