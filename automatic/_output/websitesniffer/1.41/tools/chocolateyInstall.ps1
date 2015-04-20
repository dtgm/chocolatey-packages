$packageName = 'websitesniffer'
$url = 'http://www.nirsoft.net/utils/websitesniffer.zip'
$checksum = 'a09ca6bd1639d2994059b060fcdeee05acf29739'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/websitesniffer-x64.zip'
$checksum64 = 'd1cb03ee7a7c3f470f94c17127397495ba569f88'
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