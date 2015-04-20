$packageName = 'ntfslinksview'
$url = 'http://www.nirsoft.net/utils/ntfslinksview.zip'
$checksum = 'f32b7602ca6a0f890ccc238ee13499ed32cd5fae'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/ntfslinksview-x64.zip'
$checksum64 = '27d4c095f386203027c541d76f218fff2f34d3de'
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