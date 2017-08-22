$packageName = 'bulkfilechanger'
$url = 'http://www.nirsoft.net/utils/bulkfilechanger.zip'
$checksum = '0c01eaf65f3e26c7b2c0bce7194a35c4b3c17ff7f24832f7752e76c25a21563d'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/bulkfilechanger-x64.zip'
$checksum64 = '6a5ebf43748826018d8ab18c083cb48df4d532005dbd1a40f45def7391d8166e'
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