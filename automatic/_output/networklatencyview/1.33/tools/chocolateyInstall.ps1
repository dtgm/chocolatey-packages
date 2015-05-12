$packageName = 'networklatencyview'
$url = 'http://www.nirsoft.net/utils/networklatencyview.zip'
$checksum = 'fcb2553f36b21a7769c1418ab210ba31cf24199e'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/networklatencyview-x64.zip'
$checksum64 = '8a131dc04621a07050e216910e11cbd6675d6097'
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