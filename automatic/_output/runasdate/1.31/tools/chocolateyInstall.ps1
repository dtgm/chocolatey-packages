$packageName = 'runasdate'
$url = 'http://www.nirsoft.net/utils/runasdate.zip'
$checksum = 'a85de850d3cf6c6a11e6b35c5e18073fb9d6af323ead3e826375bd067692e846'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/runasdate-x64.zip'
$checksum64 = '7de80eb349157f8df5ce6ce0c9454fa2c14b878559a22566af4aff424e2525e4'
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