$packageName = 'multimonitortool'
$url = 'http://www.nirsoft.net/utils/multimonitortool.zip'
$checksum = 'acee97ea00d2471de94e58ac4ef2845d728ae5aeb33f78f71bfe58ad4fdffd05'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/multimonitortool-x64.zip'
$checksum64 = '704a48f983bb94207aa40fd10c92144e0faba015dae794784b95c5343a3e27fc'
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