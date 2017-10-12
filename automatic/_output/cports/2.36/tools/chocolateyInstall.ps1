$packageName = 'cports'
$url = 'http://www.nirsoft.net/utils/cports.zip'
$checksum = '5cb2a05ade473154e0fc8b4b1f5b4a7ad552c90c66190a4914f65afde3791618'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/cports-x64.zip'
$checksum64 = 'e48aa3f680182f6fd3ab985e35f9b6000521ae9e1ea7f5cd8612f7823cb0976f'
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