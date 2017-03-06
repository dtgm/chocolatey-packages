$packageName = 'searchmyfiles'
$url = 'http://www.nirsoft.net/utils/searchmyfiles.zip'
$checksum = 'df2247f2090e48cac2b4dff6941c9784caae03698159257bb4d5179759cabc21'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/searchmyfiles-x64.zip'
$checksum64 = 'd345aa1e4f58e53ce56cd7d791009ca1ab116b5d211bf170937dddfc784c100f'
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