$packageName = 'multimonitortool'
$url = 'http://www.nirsoft.net/utils/multimonitortool.zip'
$checksum = 'b8c1fa1dd897e9a3787b50441d1d0d496e9f8652aa935c5c3c8f14976a9a7fc3'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/multimonitortool-x64.zip'
$checksum64 = 'b3b3e1e5003f49178e5786c44dac17be8d00868c813128a8fd0dc48f46a56ff4'
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