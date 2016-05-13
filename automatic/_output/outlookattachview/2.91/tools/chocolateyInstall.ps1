$packageName = 'outlookattachview'
$url = 'http://www.nirsoft.net/utils/outlookattachview.zip'
$checksum = '048b5dc173bd93f71c52708bd69c1186e4bd43d2'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/outlookattachview-x64.zip'
$checksum64 = 'ccb5c8aa733929cd7cb6997b19c572711cc9cff6'
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