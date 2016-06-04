$packageName = 'soundvolumeview'
$url = 'http://www.nirsoft.net/utils/soundvolumeview.zip'
$checksum = 'bf7a7c9f6ac68fa34fff79897de9d2e41e9a0c78b1ec88d7efe998332dd23a5c'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/soundvolumeview-x64.zip'
$checksum64 = 'd3f26c1a1f8a2e9dd1c783fcf19afbb6122777387cdd04005e47011ab8aab03f'
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