$packageName = 'specialfoldersview'
$url = 'http://www.nirsoft.net/utils/specialfoldersview.zip'
$checksum = '03b0c309d401e4f1bfb99e45a0e83e07bc940327'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/specialfoldersview-x64.zip'
$checksum64 = '2265164287635200d1e0fb71b96b2c1645206d8d'
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