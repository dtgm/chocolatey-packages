$packageName = 'outlookstatview'
$url = 'http://www.nirsoft.net/utils/outlookstatview.zip'
$checksum = 'ac4a606c3a44412e1e4fdc47f9d4f6895e06b8bb'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/outlookstatview-x64.zip'
$checksum64 = '98979a59d9d96d25674880c6f984dcc8abb42900'
$checksumType64 = 'sha1'
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