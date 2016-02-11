$packageName = 'filetypesman'
$url = 'http://www.nirsoft.net/utils/filetypesman.zip'
$checksum = '6aa93319164a6128211622e036b2cc19a6d37756'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/filetypesman-x64.zip'
$checksum64 = '180f3b9ccc70430e6757a33a96de016ad99630c0'
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