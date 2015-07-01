$packageName = 'devmanview'
$url = 'http://www.nirsoft.net/utils/devmanview.zip'
$checksum = 'c4db3949c3d513af45e55da5d0d4b3f7ebb19196'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/devmanview-x64.zip'
$checksum64 = 'f62f45ce0286ee1a192c5ddc4a62266d02f22f44'
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