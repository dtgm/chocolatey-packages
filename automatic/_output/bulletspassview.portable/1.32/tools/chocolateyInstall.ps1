$packageName = 'bulletspassview.portable'
$url = 'http://www.nirsoft.net/utils/bulletspassview.zip'
$checksum = '6f6fd8861c1eeea0d2da8e449fe8b0a1ac808311'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/bulletspassview-x64.zip'
$checksum64 = 'd831b489e4753341c23ff5042dc1d8c02f123f57'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "bulletspassview.exe"

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