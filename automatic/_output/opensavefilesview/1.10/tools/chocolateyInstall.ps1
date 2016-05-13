$packageName = 'opensavefilesview'
$url = 'http://www.nirsoft.net/utils/opensavefilesview.zip'
$checksum = 'b26c4385cd9345ee249ef19373d70d408649d21f'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/opensavefilesview-x64.zip'
$checksum64 = '8c1589714dafbf040891a3b8e5a3b39a8af9be82'
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