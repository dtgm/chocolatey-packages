$packageName = 'webcookiessniffer'
$url = 'http://www.nirsoft.net/utils/webcookiessniffer.zip'
$checksum = '8fde9dfd038583f62825ee97446d63a9c5ad869e'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/webcookiessniffer-x64.zip'
$checksum64 = 'ff2f287f10bf5b814175ce5aebf090c7e63c822d'
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