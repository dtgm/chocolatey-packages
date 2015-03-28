$packageName = 'filetool'
$url = 'https://stexbar.googlecode.com/files/FileTool-1.0.0.814.zip'
$checksum = '2c09689e53e7942b093bf0d3e3cf401641dc14c6'
$checksumType = 'sha1'
$url64 = 'https://stexbar.googlecode.com/files/FileTool64-1.0.0.814.zip'
$checksum64 = '8f556b283a0dc18c646beb7380aafbbe9048b18f'
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
Set-Content -Path ("$installFile.gui") -Value $null