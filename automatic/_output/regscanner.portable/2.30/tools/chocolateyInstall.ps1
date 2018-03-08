$packageName = 'regscanner.portable'
$url = 'http://www.nirsoft.net/utils/regscanner.zip'
$checksum = '0edb72d92659eed2dbd3c35288ac58c4173e845d8c1452dbd8956a821d026043'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/regscanner-x64.zip'
$checksum64 = '23a3a5010cb0b73f1f5fbad32bece5fa1d2144cdf106dc61f459e4ac7f33e33f'
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