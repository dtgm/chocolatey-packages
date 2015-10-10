$packageName = 'shmnview'
$url = 'http://www.nirsoft.net/utils/shmnview.zip'
$checksum = 'a33d82e00422b3df41b9590d227a360e040ca9ea'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/shmnview-x64.zip'
$checksum64 = '7523fd643589129479c575cbbaf5489f30c7e59c'
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