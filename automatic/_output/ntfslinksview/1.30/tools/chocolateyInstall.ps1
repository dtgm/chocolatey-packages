$packageName = 'ntfslinksview'
$url = 'http://www.nirsoft.net/utils/ntfslinksview.zip'
$checksum = 'cd082d2d4c8fea975327348901f2a7ec4ee4d0370010c8cb8066a6f20340d9cb'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/ntfslinksview-x64.zip'
$checksum64 = '7d175d77577a4fe51c64df34964d84d110c5fbcb2f24db3f815ec7ef92fd3261'
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