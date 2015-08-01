$packageName = 'networklatencyview'
$url = 'http://www.nirsoft.net/utils/networklatencyview.zip'
$checksum = 'bda9ac39b7722c1780de8050562610449f93abd3'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/networklatencyview-x64.zip'
$checksum64 = 'd8dacff1d48c82b4adb1a27deff08fbb3ba292fb'
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