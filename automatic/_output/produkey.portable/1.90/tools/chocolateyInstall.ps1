$packageName = 'produkey.portable'
$url = 'http://www.nirsoft.net/utils/produkey.zip'
$checksum = 'c0f5c8b808571d8375ca5fd1f1dad9bd5c67e22c8f753e25813e07a6fc14a06f'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/produkey-x64.zip'
$checksum64 = '4d77ee890fe9b3629ce5c0c258c66607270fde27faf85c41e7672b8ec7a94c08'
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