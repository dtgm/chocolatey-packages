$packageName = 'shmnview'
$url = 'http://www.nirsoft.net/utils/shmnview.zip'
$checksum = 'cd627235846ec8e8cd0ffd8e907e411b54cca8ed'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/shmnview-x64.zip'
$checksum64 = '35ec88bed3c2cece1ed7ae061025891cb8b04778'
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