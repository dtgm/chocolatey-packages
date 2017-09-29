$packageName = 'passwordscan.portable'
$url = 'http://www.nirsoft.net/utils/passwordscan.zip'
$checksum = '73b32e40a426cd3070a699701c840f42c7dfe327dfe43866179b6a5d02d3454b'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "passwordscan.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null