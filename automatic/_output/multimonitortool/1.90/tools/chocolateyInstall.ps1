$packageName = 'multimonitortool'
$url = 'http://www.nirsoft.net/utils/multimonitortool.zip'
$checksum = '02d4b024747f64ecc63febd2fef5485c4bfc3069e3170b217f398c88136143df'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/multimonitortool-x64.zip'
$checksum64 = 'e3f26eb8f4a20bfad55a556e5e9674578c1d75fa1c4f1d2e16f9ab451720e159'
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