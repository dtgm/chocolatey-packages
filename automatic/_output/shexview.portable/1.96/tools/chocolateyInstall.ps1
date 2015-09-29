$packageName = 'shexview.portable'
$url = 'http://www.nirsoft.net/utils/shexview.zip'
$checksum = 'fc8d9c9cf1be91c84305629ac115fecfe0d87e02'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/shexview-x64.zip'
$checksum64 = '8dd5dd09a6934ea676a7d81724074e93bcc6e5c9'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "shexview.exe"

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