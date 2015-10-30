$packageName = 'opensavefilesview'
$url = 'http://www.nirsoft.net/utils/opensavefilesview.zip'
$checksum = '7815319b666c1e77e6006e3d7b698c352c0a80f3'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/opensavefilesview-x64.zip'
$checksum64 = '7832b950706a200b991c4ccb97027fb02edf2558'
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