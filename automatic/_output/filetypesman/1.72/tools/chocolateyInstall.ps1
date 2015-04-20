$packageName = 'filetypesman'
$url = 'http://www.nirsoft.net/utils/filetypesman.zip'
$checksum = '862fa1462a1009072c213ccddb4761e673e3ff5b'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/filetypesman-x64.zip'
$checksum64 = '3acb9b1a0c78b2a66c6e33a7d0d18bfda7ccb5e5'
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