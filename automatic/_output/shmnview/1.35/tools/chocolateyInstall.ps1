$packageName = 'shmnview'
$url = 'http://www.nirsoft.net/utils/shmnview.zip'
$checksum = '3d40468be560073a5e335ecb3767f3341790e2a1bcbf32712ff999a7bce05ff5'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/shmnview-x64.zip'
$checksum64 = '1eef9ed8c62bff8536a22d437088ae24f77ecc2814fbfaddb704dbd0ebf7c40b'
$checksumType64 = 'sha256'
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