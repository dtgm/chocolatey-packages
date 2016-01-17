$packageName = 'specialfoldersview'
$url = 'http://www.nirsoft.net/utils/specialfoldersview.zip'
$checksum = '30d8b2c9a41a65ae4e6327d41a5dad30688a5c5a'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/specialfoldersview-x64.zip'
$checksum64 = '7469d5fecf67ef997c17ab8d44e2b1539da6c7fa'
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