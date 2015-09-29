$packageName = 'winprefetchview'
$url = 'http://www.nirsoft.net/utils/winprefetchview.zip'
$checksum = 'f24d005bf4c1f3817fd9065cad4919c46b3c2e44'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/winprefetchview-x64.zip'
$checksum64 = 'e8b7b5882a627a0bfecc6b1e095a84dec3e7fd54'
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