$packageName = 'devmanview'
$url = 'http://www.nirsoft.net/utils/devmanview.zip'
$checksum = '9e11b0eaefbb3f20635eb4a3ab09caf0238caea9'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/devmanview-x64.zip'
$checksum64 = '8dbfe4962051379d9c20eaad9e0d385c3e904631'
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