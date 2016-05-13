$packageName = 'wnetwatcher.portable'
$url = 'http://www.nirsoft.net/utils/wnetwatcher.zip'
$checksum = '64ad52c7955c8894c3410cb752aa8efb81ed6ee2'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "wnetwatcher.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null