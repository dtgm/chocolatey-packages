$packageName = 'opensavefilesview'
$url = 'http://www.nirsoft.net/utils/opensavefilesview.zip'
$checksum = '7ffbd15cd38235c88cdb34ffa0fe577c86b2ddc4192e9860d8f1e1dfc3ce64f5'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/opensavefilesview-x64.zip'
$checksum64 = 'c21b7d419f3e74913fb2a9f460a5bea58cb5907eea589a453f2ddf613b49c743'
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