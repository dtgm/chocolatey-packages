$packageName = 'produkey.portable'
$url = 'http://www.nirsoft.net/utils/produkey.zip'
$checksum = 'c0ff0bafd0d560983d2a24de731f61d66b68d3f356e6012a5bd7ad1cd51f3103'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/produkey-x64.zip'
$checksum64 = '02d36929dad6c50e151e5ebbcae49792d3b3e7155acdb80045bb8d08e0a7245d'
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