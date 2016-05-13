$packageName = 'outlookattachview'
$url = 'http://www.nirsoft.net/utils/outlookattachview.zip'
$checksum = 'caba1587b6cc32792591661b9cfb408663e6228e'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/outlookattachview-x64.zip'
$checksum64 = '398b4b9350a2d1a529d7e44c026bd0addc11fbe2'
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